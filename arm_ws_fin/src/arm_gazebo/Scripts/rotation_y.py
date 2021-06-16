import numpy as np

def Ry(theta):

    return np.array([
    [np.cos(theta),0,np.sin(theta),0],
    [0, 1,0,0],
    [-np.sin(theta),0,np.cos(theta),0],
    [0,0,0,1]

])