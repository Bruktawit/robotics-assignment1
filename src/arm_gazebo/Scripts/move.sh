#!/bin/bash
sleep 5
rostopic pub --once /vectorPositions arm_gazebo/vector -- {2.5,0.3,0.25} 
rostopic pub --once /command_chatter arm_lib/input_command catch
rostopic pub --once /vectorPositions arm_gazebo/vector -- {2,-1.2,1.6}
rostopic pub --once /vectorPositions arm_gazebo/vector -- {2,-1.2,0.7}
rostopic pub --once /command_chatter arm_lib/input_command release
rostopic pub --once /vectorPositions arm_gazebo/vector -- {0,1.32,3.38}