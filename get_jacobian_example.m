%%% Example getting a robot end-effector jacobian matrix

robotname="universalUR5";
robot = loadrobot(robotname,"DataFormat","column","Gravity",[0 0 -9.81]);

bodyname="tool0";   %specify the body name to be the tool (eef)
targetJointPosition = [pi/2 -pi/3 pi/2 -2*pi/3 -pi/2 -pi/3]';

%return jacobian matrix, angular at top, linear at bottom
geoJacob = geometricJacobian(robot,targetJointPosition,bodyname)