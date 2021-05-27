
# define PI         3.141592653589793238462643383279502884L

#include "ros/ros.h"
#include "std_msgs/String.h"
#include <trans/position_angle_distance.h>
#include <trans/out_position_angle_distance.h>
#include<math.h>

trans::out_position_angle_distance rotate_then_translate(const trans::position_angle_distance::ConstPtr& msg)
{
  trans::out_position_angle_distance result;
  
  // change the angles to radian 
  float alpha = msg->alpha * (PI / 180);
  float beta = msg->beta * (PI / 180);
  float gamma = msg->gamma * (PI / 180);

  // rotation about x
  result.x = msg->x;
  result.y = msg->y * cos(alpha) - msg->z * sin(alpha);
  result.z = msg->y * cos(alpha) + msg->z * sin(alpha);

  // rotation about y
  result.x = result.x * cos(beta) + result.z * sin(beta);
  result.z = result.x * cos(beta) - result.z * sin(beta);
  
  // rotation about z
  result.x = result.x * cos(beta) - result.y * sin(beta);
  result.y = result.x * cos(beta) + result.y * sin(beta);
  
  // add the distance
  result.x += msg->distance;
  result.y += msg->distance;
  result.z += msg->distance;

  return result;
}

void chatterCallback(const trans::position_angle_distance::ConstPtr& msg)
{
  trans::out_position_angle_distance result = rotate_then_translate(msg);

  ROS_INFO("X: [%lf]",result.x);
  ROS_INFO("Y: [%lf]",result.y);
  ROS_INFO("Z: [%lf]",result.z);
}


int main(int argc, char **argv)
{

  ros::init(argc, argv, "sub");

  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("rotate_translate", 1000, chatterCallback);

  ros::spin();

  return 0;
}
