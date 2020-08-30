%%% Example getting a robot end-effector pose


robotname="universalUR5";
robot = loadrobot(robotname,"DataFormat","column","Gravity",[0 0 -9.81]);
targetJointPosition = [pi/2 -pi/3 pi/2 -2*pi/3 -pi/2 -pi/3]';
bodyname="tool0";   %specify the body name to be the tool (eef)
%output 4x4 homogeneous transformation matrix of end effector
transform = getTransform(robot,targetJointPosition,bodyname)