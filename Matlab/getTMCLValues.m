clear all;
clc;

vRpm = 1340;
n =200;
vInt = 2047;

fSpace = fliplr(2.^(0:5));%possible microstep range
for f = fSpace
    vPps = vRpm*n*f/60;
    pulseDiv = log2(16E6*vInt/(2048*32*vPps));
    if(isreal(pulseDiv) && pulseDiv>0)
        break;
    end
end
fprintf("Optimal Microstep: "+f+"\n");
pulseDiv = floor(pulseDiv);
fprintf("pulseDiv: "+pulseDiv+"\n");
vPps = 16E6*vInt/(2^pulseDiv*2048*32);
vRpm = 60*vPps/n/f;
fprintf("max speed: "+vRpm+" RPM\n");
