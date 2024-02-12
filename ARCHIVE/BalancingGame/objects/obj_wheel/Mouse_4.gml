/// @description When wheel is clicked
if(!is_spinning){
	is_spinning=true;
	if(image_angle == 0){
		spin_back=false;
		speed_up = true;
		constant_speed = false;
		slow_down = false;
	}
	if(image_angle > 0){
		image_angle=image_angle%360;
		spin_back=true;
		speed_up = false;
		constant_speed = false;
		slow_down = false;
	}

	currentspeed = 0;
	val=0;
	val1=0;
	val2=0;
	randseed=random(12000)
	random_set_seed(randseed)
	rand1=random_range(10,100);
};