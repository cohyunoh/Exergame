/// @description Insert description here
// You can write your code in this editor
if(!is_spinning){
	is_spinning=true;
	if(starting_rot <= 0){
		spin_back=false;
		speed_up = true;
		constant_speed = false;
		slow_down = false;
	}
	if(starting_rot > 0){
		starting_rot=starting_rot%360;
		spin_back=true;
		speed_up = false;
		constant_speed = false;
		slow_down = false;
	}

	currentspeed = 0;
	val=0;
	val1=0;
	val2=0;
	randomize();
	rand1=random_range(10,100);
};



