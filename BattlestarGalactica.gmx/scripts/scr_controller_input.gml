var device=argument0;
var aimer = argument1;
var pspeed=argument2;


var haxis = gamepad_axis_value(device, gp_axislh);
var vaxis = gamepad_axis_value(device, gp_axislv);
direction = point_direction(0, 0, haxis, vaxis);
speed = point_distance(0 ,0, haxis, vaxis) * pspeed;

//Fix this line because aimer has properites
aimer = instance_create(x,y,aimer);
aimer.direction = point_direction(0,0,haxis,vaxis);
aimer.image_angle = direction


