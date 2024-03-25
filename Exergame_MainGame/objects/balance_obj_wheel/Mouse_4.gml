/// @description Insert description here
// You can write your code in this editor
if(!is_spinning){
	is_spinning=true;
	speed_up = true;
	constant_speed = false;
	slow_down = false;
	currentspeed = 0;
	reverse=false;
	val=0;
	val1=0;
	val2=0;
	val3=0;
	randomize();
	rand1=random_range(1500,3000);	
	randomize();
	rand2=random_range(100,200);
	done=false;
	if (rotate>0){
		initial_rotate=rotate;
		rotate=rotate%360;
	}
}


