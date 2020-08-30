%%% Example solving a robot inverse kinematics iteratively

robotname="universalUR5";
robot = loadrobot(robotname,"DataFormat","column","Gravity",[0 0 -9.81]);


%%% inverse kinematics
randConfig = robot.randomConfiguration;
tform= [-1 0 0 0.3;
        0 1 0 0.3;
        0 0 -1 0;
        0 0 0 1];

ik = inverseKinematics('RigidBodyTree',robot);
weights = [10 10 10 1 1 1];
initialguess = robot.homeConfiguration;
bodyname="tool0";
[configSoln,solnInfo] = ik(bodyname,tform,weights,initialguess);
show(robot,configSoln);
tform = getTransform(robot,configSoln,bodyname)
