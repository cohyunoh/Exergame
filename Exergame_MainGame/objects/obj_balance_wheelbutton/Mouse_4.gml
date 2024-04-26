/// @description Insert description here
// You can write your code in this editor
if(!obj_balance_wheel.is_spinning){
	if(!obj_balance_gameProctor.pause){
		obj_balance_wheel.is_spinning=true;
		obj_balance_wheel.speed_up = true;
		obj_balance_wheel.constant_speed = false;
		obj_balance_wheel.slow_down = false;
		obj_balance_wheel.currentspeed = 0;
		obj_balance_wheel.reverse=false;
		if (obj_balance_wheel.image_angle>0){
			obj_balance_wheel.initial_rotate=obj_balance_wheel.image_angle;
			obj_balance_wheel.image_angle=obj_balance_wheel.image_angle%360;
		}
	};
}