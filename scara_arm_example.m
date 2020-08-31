% creating 2-link planar model example
body1 = rigidBody('body1');
jnt1 = rigidBodyJoint('jnt1','revolute');
jnt1.HomePosition = pi/4;
tform = trvec2tform([0.25, 0.25, 0]); % User defined base to world tform
setFixedTransform(jnt1,tform);
body1.Joint = jnt1;
robot = rigidBodyTree;
addBody(robot,body1,'base')

body2 = rigidBody('body2');
jnt2 = rigidBodyJoint('jnt2','revolute');
jnt2.HomePosition = 0; % User defined
jnt2.JointAxis=[0,0,1];
tform2 = trvec2tform([1, 0, 1]); % User defined
setFixedTransform(jnt2,tform2);
body2.Joint = jnt2;
addBody(robot,body2,'body1'); % Add body2 to body1

body3 = rigidBody('body3');
jnt3 = rigidBodyJoint('jnt3','prismatic');
jnt3.HomePosition = 0; % User defined
jnt3.JointAxis=[0,0,1]
tform2 = trvec2tform([1, 0, 0]); % User defined
setFixedTransform(jnt3,tform2);
body3.Joint = jnt3;
addBody(robot,body3,'body2'); % Add body2 to body2

bodyEndEffector = rigidBody('endeffector');
tform3 = trvec2tform([0, 0, -0.2]); % User defined
setFixedTransform(bodyEndEffector.Joint,tform3);
addBody(robot,bodyEndEffector,'body3'); %attach eef to body3

%display robot and its details
show(robot)
showdetails(robot)

%jog joint
config = homeConfiguration(robot)
config(1).JointPosition=pi/6;
config(2).JointPosition=0;
config(3).JointPosition=-0.3;


targetJointPosition=config;
show(robot,targetJointPosition)