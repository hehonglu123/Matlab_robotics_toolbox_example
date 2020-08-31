%%% Example loading a robot object (rigidBodyTree) and show its
%%% configuration
robotname="universalUR5";
robot = loadrobot(robotname,"DataFormat","column","Gravity",[0 0 -9.81]);
show(robot)
showdetails(robot)