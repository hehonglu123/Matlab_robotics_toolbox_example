%%% Example loading a robot object and set its joint angle & display

robotname="universalUR5";
robot = loadrobot(robotname,"DataFormat","column","Gravity",[0 0 -9.81]);
targetJointPosition = [pi/2 -pi/3 pi/2 -2*pi/3 -pi/2 -pi/3]';
show(robot,targetJointPosition)