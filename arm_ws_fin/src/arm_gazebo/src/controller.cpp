#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>

#include "ros/ros.h"
#include "arm_gazebo/joint_angles.h"

#include "arm_gazebo/FK.h"
#include "arm_gazebo/IK.h"
#include "arm_gazebo/vector.h"


namespace gazebo
{
	class ModelPush : public ModelPlugin
	{

		public:
		void positionsVal(const arm_gazebo::vector &value)
		{
			
			arm_gazebo::IK srv;
			srv.request.link_lengths = {0.05, 2, 1, 0.5, 0.1, 0.1};
			srv.request.joint_angles = {0, 0, 0, 0, 0, 0};
			srv.request.positions = {value.x, value.y, value.z};

			for (int i = 0; i < joints.size() - 4; i++)
			{
				srv.request.joint_angles[i] = physics::JointState(joints[i]).Position(0);
			}

			if (ik_client.call(srv))
			{				
				ROS_INFO("IK: [%f, %f, %f, %f, %f, %f]", srv.response.target_positions[0], srv.response.target_positions[1], srv.response.target_positions[2], srv.response.target_positions[3], srv.response.target_positions[4], srv.response.target_positions[5]);

				for (int i = 0; i < joints.size() - 4; i++)
				{
					jointController->SetPositionTarget(joints[i]->GetScopedName(), srv.response.target_positions[i]);
				}
			}
			else
			{
				ROS_ERROR("Failed to call service IK");
			}
		}


	public:
			void anglesAssign(const arm_gazebo::joint_angles angles)
		{
			
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
			
            this->joints = model->GetJoints();
			// // intiantiate the joint controller
			this->jointController = this->model->GetJointController();

			// // set your PID values
			this->pid = common::PID(30.1, 10.01, 10.03);

			for (int i = 0; i < joints.size() - 4; i++)
			{
				jointController->SetPositionTarget(joints[i]->GetScopedName(), 0);
				
			}

			auto joint_name = "arm1_arm2_joint";

			std::string name = this->model->GetJoint("arm1_arm2_joint")->GetScopedName();

			this->jointController->SetPositionPID(name, pid);

			jointController->SetPositionTarget(model->GetJoint("arm1_arm2_joint")->GetScopedName(), -0.2);
			jointController->SetPositionTarget(model->GetJoint("arm6_arm7_joint")->GetScopedName(), -0.5);
			jointController->SetPositionTarget(model->GetJoint("arm6_arm8_joint")->GetScopedName(), 0.5);

			// Listen to the update event. This event is broadcast every
			// simulation iteration.
			this->updateConnection = event::Events::ConnectWorldUpdateBegin(
				std::bind(&ModelPush::OnUpdate, this));

			int argc = 0;
			char **argv = NULL;
			ros::init(argc, argv, "controller");
			pub = n.advertise<arm_gazebo::joint_angles>("print_angles",100);
			sub = n.subscribe("joint_position", 1000, &ModelPush::anglesAssign, this);
			
			positionsSub = n.subscribe("/vectorPositions", 1000, &ModelPush::positionsVal, this);
			
			fk_client = n.serviceClient<arm_gazebo::FK>("fk");
			ik_client = n.serviceClient<arm_gazebo::IK>("ik");
			ros::spinOnce();
						
		}

	void forward_kinematics(double a1, double a2, double a3, double a4, double a5, double a6)
		{
			arm_gazebo::FK srv;
			srv.request.link_lengths = {0.05, 2, 1, 0.5, 0.1, 0.1};
			srv.request.joint_angles = {a1, a2, a3, a4, a5, a6};

			if (fk_client.call(srv))
			{
				ROS_INFO("FK: [%f, %f, %f]", srv.response.actuator_pose[0], srv.response.actuator_pose[1], srv.response.actuator_pose[2]);
			}
			else
			{
				ROS_ERROR("Failed to call service fk");
			}
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
			double a5 = physics::JointState(this->model->GetJoint("arm4_arm5_joint")).Position(0);
			double a6 = physics::JointState(this->model->GetJoint("arm5_arm6_joint")).Position(0);

			arm_gazebo::joint_angles angles;

			angles.joint1 = a1;
    		angles.joint2 = a2;
    		angles.joint3 = a3;
    		angles.joint4 = a4;
    
    		this->pub.publish(angles);

			forward_kinematics(a1, a2, a3, a4, a5, a6);

			ros::spinOnce();
			// double a2 = this->model->GetJoint("chasis_arm1_joint").Position(0);
			// double a3 = physics::JointState(this->model->GetJoint("chasis_arm1_joint")).Position(2);
			// std::cout << "Current chasis_arm1_joint values: " << a1 * 180.0 / M_PI << std::endl;
			//std::cout << "Current arm1_arm2_joint values: " << a2 * 180.0 / M_PI << std::endl;
			//std::cout << "Current arm2_arm3_joint values: " << a3 * 180.0 / M_PI << std::endl;
			//std::cout << "Current arm3_arm4_joint values: " << a4 * 180.0 / M_PI << std::endl;
		}

		// a pointer that points to a model object
	private:
		physics::ModelPtr model;

		// 	// A joint controller object
		// 	// Takes PID value and apply angular velocity
		// 	//  or sets position of the angles
	private:
		physics::JointControllerPtr jointController;
        physics::Joint_V joints;
	private:
		event::ConnectionPtr updateConnection;

		// // 	// PID object
	private:
		common::PID pid;

	private:
		ros::Publisher pub;
		ros::NodeHandle n;
		ros::Subscriber sub;
		ros::Subscriber positionsSub;
		ros::ServiceClient fk_client;
		ros::ServiceClient ik_client;
	};

	// Register this plugin with the simulator
	GZ_REGISTER_MODEL_PLUGIN(ModelPush)


}

