/// @description Insert description here
// You can write your code in this editor

// number of segments
segments=9;

//angle size of each segment
angle=360/segments;

// Lists for Angles, Colors, Corresponding Numbers for the Angles, the poles objects, and their phases
angles=[];
colors=[];
corresponding_nums=[];
poles=[];
pole_phases=[];

// Random Wheel Speed
randomize();
wheel_speed = random_range(4,10.1);		// speed wheel will spin

//Initialize the States of the Wheel 
speed_up = false;
constant_speed = false;
slow_down = false;
is_spinning = false;
reverse=false;

// Current Speed will tell us at what speed it is currently spinning at
currentspeed = 0;

//Radius of wheel
radius=400;

//Used for spinning back
initial_rotate=0;

// Time it is spinning for. Should be Max of 7.5 seconds
time = 0;

// Time for each states
randomize();
tot_time = random_range(7,10);
randomize();
time_speed_up = tot_time * random_range(0.1,0.25);
randomize();
time_slow_down = tot_time * random_range(0.25,0.3);
time_constant = tot_time - time_speed_up - time_slow_down;

// Curves
speed_up_curve = animcurve_get_channel(ANM_balance_wheel,"speed_up");
slow_down_curve= animcurve_get_channel(ANM_balance_wheel,"slow_down");
reverse_curve= animcurve_get_channel(ANM_balance_wheel,"reverse");


//Create Color List Based Off Of Odd or Even
if(segments%2 == 0){
	colors=[c_red,c_yellow];
}else {
	colors=[c_red,c_aqua,c_yellow];
}

//Create amg;es amd corrsponding numbers list
iNum = 9;
for (i=0;i<=360-angle;i+=angle){
	array_push(angles, i);
	array_push(corresponding_nums,iNum);
	iNum -= 1;
}

//show_debug_message(angles);
//show_debug_message(corresponding_nums);

// Poles list and Poles Phase List
for (i=0;i<array_length(angles);i++){
	instance_pole = instance_create_layer(x+cos(degtorad(angles[i]))*radius, y-sin(degtorad(angles[i]))*radius,"Poles", obj_balance_pole);
	array_push(poles,instance_pole);
	array_push(pole_phases,point_direction(x,y,instance_pole.x,instance_pole.y));
	//show_debug_message(pole_phases);
	//show_debug_message(poles);
}