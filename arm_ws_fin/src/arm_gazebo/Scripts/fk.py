from __future__ import print_function
 
from arm_lib.srv import FK,FKResponse
import rospy
import numpy as np

def Rz(theta):

    return np.array([
    [np.cos(theta),-np.sin(theta),0,0],
    [np.sin(theta), np.cos(theta),0,0],
    [0,0,1,0],
    [0,0,0,1]

])

def Tz(distance):

    return np.array([
        [1,0,0,0],
        [0,1,0,0],
        [0,0,1,distance],
        [0,0,0,1]


    ])

def Rx(theta):

    return np.array([
    [1,0,0,0],
    [0, np.cos(theta),-np.sin(theta),0],
    [0,np.sin(theta),np.cos(theta),0],
    [0,0,0,1]

])

def Ry(theta):

    return np.array([
    [np.cos(theta),0,np.sin(theta),0],
    [0, 1,0,0],
    [-np.sin(theta),0,np.cos(theta),0],
    [0,0,0,1]

])

def do_forward_kinematics(req):

    angle1 = req.joint_angles[0]
    angle2 = req.joint_angles[1]
    angle3 = req.joint_angles[2]
    angle4 = req.joint_angles[3]
    angle5 = req.joint_angles[4]
    angle6 = req.joint_angles[5]

    length1 = req.link_lengths[0]
    length2 = req.link_lengths[1]
    length3 = req.link_lengths[2]
    length4 = req.link_lengths[3]
    length5 = req.link_lengths[4]
    length6 = req.link_lengths[5]
  
    M1 = Tz(length1)
    M2 = Rz(np.radians(angle1)).dot(Tz(length1))
    M3 = Rx(np.radians(angle2)).dot(Tz(length2)
    M4 = Rx(np.radians(angle3)).dot(Tz(length3))
    M5 = Rx(np.radians(angle4)).dot(Tz(length4))
    M6 = Rz(np.radians(angle5)).dot(Tz(length5))
    M7 = Ry(np.radians(angle6)).dot(Tz(length6))


    mats = [M1,M2,M3,M4,M5,M6,M7]
    M = M1

    for i in range(1,len(mats)):
        M = M.dot(mats[i])

    x = M[0][3]
    y = M[1][3]
    z = M[2][3]

    return FKResponse([x,y,z])

def fk_server():
    rospy.init_node('fk_server')
    s = rospy.Service('fk', FK, do_forward_kinematics)
    print("Ready to calculate forward kinematics.")
    rospy.spin()
 
if __name__ == "__main__":
    fk_server()