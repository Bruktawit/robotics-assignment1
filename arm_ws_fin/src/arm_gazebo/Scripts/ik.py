from __future__ import print_function
 
from arm_lib.srv import IK,IKResponse
import rospy
import numpy as np

import tinyik as ik

arm = ik.Actuator([
    "z", [0, 0, 0.15],
    "x", [0, 0, 2.0],
    "x", [0, 0, 1.0],
    "x", [0, 0, .5],
    "z", [0, 0, 0.1],
    "x", [0, 0, 0.1]
])

def do_inverse_kinematics(req):
    arm.ee = req.positions
    
    return IkResponse(req.joint_positions)

def ik_server():
    rospy.init_node('ik_server')
    s = rospy.Service('ik', IK, do_inverse_kinematics)
    print("Ready to calculate inverse kinematics.")
    rospy.spin()
 
if __name__ == "__main__":
    ik_server()