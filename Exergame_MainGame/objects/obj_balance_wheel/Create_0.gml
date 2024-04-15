/// @description Insert description here
// You can write your code in this editor
segments=9;
angle=360/segments;
rotate=0;
angles=[];
colors=[];
poles=[];
pole_phases=[];
wheel_speed = 10;		// speed wheel will spin
speed_up = false;
constant_speed = false;
slow_down = false;
currentspeed = 0;
is_spinning =false
reverse=false;
val=0;
val1=0;
val2=0;
val3=0;
rand1=0;
rand2=0;
rand3=0;
radius=400;
initial_rotate=0;
done=false;


if(segments%2 == 0){
	colors=[c_red,c_yellow];
}else {
	colors=[c_red,c_aqua,c_yellow];
}

for (i=0;i<=360-angle;i+=angle){
	array_push(angles, i);
}

show_debug_message(angles);

for (i=0;i<array_length(angles);i++){
	instance_pole = instance_create_layer(x+cos(degtorad(angles[i]))*radius, y-sin(degtorad(angles[i]))*radius,"Poles", obj_balance_pole);
	array_push(poles,instance_pole);
	array_push(pole_phases,point_direction(x,y,instance_pole.x,instance_pole.y));
	//show_debug_message(pole_phases);
	//show_debug_message(poles);
}