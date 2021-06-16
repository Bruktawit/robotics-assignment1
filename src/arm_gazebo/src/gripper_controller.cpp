#include <functional>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Vector3.hh>
#include <iostream>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "arm_lib/input_command.h"

#include <sstream>

namespace gazebo
{
	class GripperController : public ModelPlugin
	{

	public:
		void commandCallback(const arm_lib::input_command &msg)
		{

			ROS_INFO(msg.command_name.c_str());

			std::string command = msg.command_name;

			std::string palm_right_finger = this->model->GetJoint("arm6_arm8_joint ")->GetScopedName();
			std::string palm_left_finger = this->model->GetJoint("arm6_arm7_joint")->GetScopedName();

			if (command == "catch")
			{
				this->jointController->SetPositionTarget(palm_right_finger, -.6);
				this->jointController->SetPositionTarget(palm_left_finger, .6);
			}
			else if (command == "release")
			{
				this->jointController->SetPositionTarget(palm_right_finger, .3);
				this->jointController->SetPositionTarget(palm_right_finger, -.3);
			}
		}

		void Load(physics::ModelPtr _parent, sdf::ElementPtr )
		{
			this->model = _parent;
			this->jointController = this->model->GetJointController();

			this->updateConnection = event::Events::ConnectWorldUpdateBegin(
				std::bind(&GripperController::OnUpdate, this));

			int argc = 0;
			char **argv = NULL;
			ros::init(argc, argv, "ros_control");
			sub = n.subscribe("/command_chatter", 1000, &GripperController::commandCallback, this);
			ros::spinOnce();
		}

		void OnUpdate()
		{
			ros::spinOnce();
		}

	private:
		physics::ModelPtr model;

		physics::JointControllerPtr jointController;

		event::ConnectionPtr updateConnection;

		ros::NodeHandle n;

		ros::Subscriber sub;
	};

	GZ_REGISTER_MODEL_PLUGIN(GripperController)
}