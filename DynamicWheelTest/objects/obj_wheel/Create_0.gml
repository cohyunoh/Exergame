/// @description Insert description here
// You can write your code in this editor
segments=6;
angle=360/segments;
starting_rot=0;
angles=[];
colors=[];
poles=[];
wheel_speed = 10;		// speed wheel will spin
spin_back = false;
speed_up = false;
constant_speed = false;
slow_down = false;
currentspeed = 0;
is_spinning =false
val=0;
val1=0;
val2=0;
rand1=0;
radius=400;
if(segments%2 == 0){
	colors=[c_red,c_aqua];
}else {
	colors=[c_red,c_aqua,c_yellow];
}

for (i=0;i<=360-angle;i+=angle){
	array_push(angles, i);
}

for (i=0;i<array_length(angles);i++){
	instance_pole = instance_create_layer(x+cos(degtorad(angles[i]))*radius, y-sin(degtorad(angles[i]))*radius,"Poles", obj_pole);
	array_push(poles,instance_pole);
}