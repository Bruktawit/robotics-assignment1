#include "ros/ros.h"
#include "std_msgs/String.h"
#include <trans/position_angle_distance.h>
#include <sstream>


int main(int argc, char **argv)
{
  ros::init(argc, argv, "pub");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<trans::position_angle_distance>("rotate_translate", 1000);

  ros::Rate loop_rate(10);

  int count = 0;
  while (ros::ok())
  {

 
    trans::position_angle_distance pad;
    std::cout << "Enter X: ";
    std::cin >> pad.x;

    std::cout << "Enter Y: ";
    std::cin >> pad.y;

    std::cout << "Enter Z: ";
    std::cin >> pad.z;
    
    std::cout << "Enter Alpha: ";
    std::cin >> pad.alpha;  

    std::cout << "Enter Beta: ";
    std::cin >> pad.beta;   

    std::cout << "Enter Gamma: ";
    std::cin >> pad.gamma;
    
    chatter_pub.publish(pad);

    ros::spinOnce();

    loop_rate.sleep();
    ++count;
  }


  return 0;
}
