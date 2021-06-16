import numpy as np

def Tz(distance):

    return ([
        [1,0,0,0],
        [0,1,0,0],
        [0,0,1,distance],
        [0,0,0,1]


    ])