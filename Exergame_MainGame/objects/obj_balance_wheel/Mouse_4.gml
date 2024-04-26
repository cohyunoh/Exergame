/// @description Insert description here
// You can write your code in this editor
if(!is_spinning){
	if(!obj_balance_gameProctor.pause){
		is_spinning=true;
		speed_up = true;
		constant_speed = false;
		slow_down = false;
		currentspeed = 0;
		reverse=false;
		if (image_angle>0){
			initial_rotate=image_angle;
			image_angle=image_angle%360;
		}
	}
}


