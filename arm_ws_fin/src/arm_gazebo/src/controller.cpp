#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>

#include "ros/ros.h"
#include "arm_gazebo/joint_angles.h"
namespace gazebo
{
	class ModelPush : public ModelPlugin
	{
	public:
			void anglesAssign(const arm_gazebo::joint_angles angles)
		{
			ROS_INFO("Received %f %f %f %f", angles.joint1, angles.joint2, angles.joint3, angles.joint4);
			std::string chasis_arm1_joint= this->model->GetJoint("chasis_arm1_joint")->GetScopedName();
			std::string arm1_arm2_joint = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			std::string arm2_arm3_joint = this->model->GetJoint("arm2_arm3_joint")->GetScopedName();
			std::string arm3_arm4_joint = this->model->GetJoint("arm3_arm4_joint")->GetScopedName();

			float radValue = M_PI/ 180.0;
			this->jointController->SetPositionTarget(chasis_arm1_joint, angles.joint1 * radValue);
			this->jointController->SetPositionTarget(arm1_arm2_joint, angles.joint2 * radValue);
			this->jointController->SetPositionTarget(arm2_arm3_joint, angles.joint3 * radValue);
			this->jointController->SetPositionTarget(arm3_arm4_joint, angles.joint4 * radValue);
		}

		void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
		{
			// Store the pointer to the model
			this->model = _parent;

			// // intiantiate the joint controller
			this->jointController = this->model->GetJointController();

			// // set your PID values
			this->pid = common::PID(30.1, 10.01, 10.03);

			auto joint_name = "arm1_arm2_joint";

			std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();

			this->jointController->SetPositionPID(name, pid);

			// Listen to the update event. This event is broadcast every
			// simulation iteration.
			this->updateConnection = event::Events::ConnectWorldUpdateBegin(
				std::bind(&ModelPush::OnUpdate, this));

			int argc = 0;
			char **argv = NULL;
			ros::init(argc, argv, "controller");
			ros::NodeHandle n;
			
			ros::Subscriber assign_angle = n.subscribe("joint_position", 1000, &ModelPush::anglesAssign, this);
			ros::spinOnce();
						
		}

	public:
		void assignTheAngles(){
			ROS_INFO("I heard: [%s]", "angles.joint1");
		}
		// Called by the world update start event
	public:
		void OnUpdate()
		{
			float angleDegree = -90;
			float rad = M_PI * angleDegree / 180;

			std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();
			// this->jointController->SetPositionPID(name, pid);
			// this->jointController->SetPositionTarget(name, rad);
			// this->jointController->Update();

			// Get joint position by index. 
			// 0 returns rotation accross X axis
			// 1 returns rotation accross Y axis
			// 2 returns rotation accross Z axis
			// If the Joint has only Z axis for rotation, 0 returns that value and 1 and 2 return nan
			double a1 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(0);
			double a2 = physics::JointState(this->model->GetJoint("arm1_arm2_joint")).Position(0);
			double a3 = physics::JointState(this->model->GetJoint("arm2_arm3_joint")).Position(0);
			double a4 = physics::JointState(this->model->GetJoint("arm3_arm4_joint")).Position(0);
			
			// double a2 = this->model->GetJoint("chasis_arm1_joint").Position(0);
			// double a3 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(2);
			std::cout << "Current chasis_arm1_joint values: " << a1 * 180.0 / M_PI << std::endl;
			std::cout << "Current arm1_arm2_joint values: " << a2 * 180.0 / M_PI << std::endl;
			std::cout << "Current arm2_arm3_joint values: " << a3 * 180.0 / M_PI << std::endl;
			std::cout << "Current arm3_arm4_joint values: " << a4 * 180.0 / M_PI << std::endl;
		}

		// a pointer that points to a model object
	private:
		physics::ModelPtr model;

		// 	// A joint controller object
		// 	// Takes PID value and apply angular velocity
		// 	//  or sets position of the angles
	private:
		physics::JointControllerPtr jointController;

	private:
		event::ConnectionPtr updateConnection;

		// // 	// PID object
	private:
		common::PID pid;


	};

	// Register this plugin with the simulator
	GZ_REGISTER_MODEL_PLUGIN(ModelPush)


}


