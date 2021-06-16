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

			ROS_INFO("Received %s", msg.command_name.c_str());

			std::string command = msg.command_name;

			std::string palm_right_finger = this->model->GetJoint("palm_right_finger ")->GetScopedName();
			std::string palm_left_finger = this->model->GetJoint("palm_left_finger")->GetScopedName();

			if (command == "catch")
			{
				this->jointController->SetPositionTarget(arm6_arm8, -0.4);
				this->jointController->SetPositionTarget(arm6_arm7, 0.4);
			}
			else if (command == "release")
			{
				this->jointController->SetPositionTarget(arm6_arm8, 0.7);
				this->jointController->SetPositionTarget(arm6_arm7, -0.7);
			}
		}

		void Load(physics::ModelPtr _parent, sdf::ElementPtr /*_sdf*/)
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
