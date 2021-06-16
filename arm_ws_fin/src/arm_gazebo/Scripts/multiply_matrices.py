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



M1 = Tz(0.1)
M2 = Rz(np.radians(60)).dot(Tz(0.05))
M3 = Rx(np.radians(30)).dot(Tz(2.0))
M4 = Rx(np.radians(-90)).dot(Tz(1.0))
M5 = Rx(np.radians(-30)).dot(Tz(1.0))

mats = [M1,M2,M3,M4,M5]
M = M1

for i in range(1,len(mats)):
    M = M.dot(mats[i])

#M = (M1.dot(M2).dot(M3).dot(M4)).dot(M5)

print(M)

import tinyik as ik

arm = ik.Actuator([
    'z',[0,0,.15],
    'x',[0,0,2.0],
    'x',[0,0,1.0],
    'x',[0,0,1.0]

])

arm.ee =[1.0,1.0,1.0]

print(arm.angles)