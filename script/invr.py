import tinyik as ik
arm=ik.Actuator([
    'z',[0,0,.15],
    'x',[0,0,2.0],
    'x',[0,0,1.0],
    'x',[0,0,1.0],
])
arm.ee=[1.0,1.0,1.0]
print(arm.angels)