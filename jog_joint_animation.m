
%%% Example animation of jogging robot joints
robotname="universalUR5";
robot = loadrobot(robotname,"DataFormat","column","Gravity",[0 0 -9.81]);

%get current configuration
homeJointPosition=robot.homeConfiguration;
%set target configuration
targetJointPosition = [pi/2 -pi/3 pi/2 -2*pi/3 -pi/2 -pi/3]';

%joint state linear interpolation
t = linspace(1,10,100); 
yPD = t.*(targetJointPosition-homeJointPosition)/10+homeJointPosition;

%display animation
exampleHelperRigidBodyTreeAnimation(robot,yPD',1)
