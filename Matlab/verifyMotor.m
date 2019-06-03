mass = 10;%lb
mass = mass*2.26;%kg
g = 9.81;%m/s^2
leverArm = 7;%in
leverArm = leverArm * 0.0254;%m

hdRatio = 80;

torque = mass*g*leverArm/hdRatio;%Nm
torque
