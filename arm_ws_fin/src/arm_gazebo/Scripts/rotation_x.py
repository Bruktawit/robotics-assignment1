import numpy as np

def Rx(theta):

    return np.array([
    [1,0,0,0],
    [0, np.cos(theta),-np.sin(theta),0],
    [0,np.sin(theta),np.cos(theta),0],
    [0,0,0,1]

])

print(Rx(np.radians(90)))