#include "ros/ros.h"
#include "arm_gazebo/joint_angles.h"


void assignCallback(const arm_gazebo::joint_angles angles)
{

  ROS_INFO("Joint1 angle is: [%f]", angles.joint1);
  ROS_INFO("Joint2 angle is: [%f]", angles.joint2);
  ROS_INFO("Joint3 angles is: [%f]", angles.joint3);
  ROS_INFO("Joint4 angles is: [%f]", angles.joint4);


    
}

int main(int argc, char **argv)
{

    ros::init(argc, argv, "assign");

    ros::NodeHandle n;

    ros::Subscriber assign_sub = n.subscribe("joint_position", 1000, assignCallback);

    ros::spin();
    
    return 0;



}