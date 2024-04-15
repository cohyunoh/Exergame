/// @description Insert description here
// You can write your code in this editor
if(!obj_balance_wheel.is_spinning){
	obj_balance_wheel.is_spinning=true;
	obj_balance_wheel.speed_up = true;
	obj_balance_wheel.constant_speed = false;
	obj_balance_wheel.slow_down = false;
	obj_balance_wheel.currentspeed = 0;
	obj_balance_wheel.reverse=false;
	obj_balance_wheel.val=0;
	obj_balance_wheel.val1=0;
	obj_balance_wheel.val2=0;
	obj_balance_wheel.val3=0;
	randomize();
	obj_balance_wheel.rand1=random_range(1500,3000);	
	randomize();
	obj_balance_wheel.rand2=random_range(100,200);
	obj_balance_wheel.done=false;
	if (obj_balance_wheel.rotate>0){
		obj_balance_wheel.initial_rotate=obj_balance_wheel.rotate;
		obj_balance_wheel.rotate=obj_balance_wheel.rotate%360;
	}
}