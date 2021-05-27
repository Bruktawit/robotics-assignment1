#include "ros/ros.h"
#include "arm_gazebo/joint_angles.h"
#include <stdio.h>

int main(int argc, char **argv)
{


    ros::init(argc, argv, "take");

    ros::NodeHandle n;

    ros::Publisher take_pub = n.advertise<arm_gazebo::joint_angles>("joint_position", 1000);

    while (ros::ok())
  {
    arm_gazebo::joint_angles angles;
    _Float32 joint1;
    std::cout << "Joint 1: ";
    std::cin >> joint1;

    _Float32 joint2;
    std::cout << "Joint 2: ";
    std::cin >> joint2;

    _Float32 joint3;
    std::cout << "Joint 3: ";
    std::cin >> joint3;

    _Float32 joint4;
    std::cout << "Joint 4: ";
    std::cin >> joint4;


    angles.joint1 = joint1;
    angles.joint2 = joint2;
    angles.joint3 = joint3;
    angles.joint4 = joint4;
    
    take_pub.publish(angles);
  }
    return 0;

}