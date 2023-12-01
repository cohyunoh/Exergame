//show_debug_message("Image Angle: " + string(image_angle));
if (speed_up){
	//show_debug_message("speeding up");
	image_angle += wheel_speed*0.1*sqr(val);
	val+=0.05;
	if (0.1*sqr(val)>=1){
		speed_up=false;
		constant_speed = true;
		currentspeed = wheel_speed*0.1*sqr(val);
		//show_debug_message("switch to constant");
	};
};
if(constant_speed = true){
	//show_debug_message("constant speed");
	image_angle += currentspeed;
	if(image_angle>1000){
		rand = random_range(0,5200);
		if(rand<50){
			//show_debug_message("switch to slow down");
			constant_speed = false
			slow_down = true
		}
		if(image_angle>6000){
			//show_debug_message("switch to slow down");
			constant_speed = false
			slow_down = true
		}
	};
};
if(slow_down){
	//show_debug_message("stop");
	image_angle+=currentspeed*(1/sqr(rand1))*sqr(val1-rand1);
	val1+=rand1/1000;
	//show_debug_message(string(currentspeed*(1/sqr(rand1))*sqr(val1-rand1)));
	if(currentspeed*(1/sqr(rand1))*sqr(val1-rand1) <= 0){
		is_spinning =false;
		slow_down=false;
		show_debug_message(string(image_angle%360));
	};
};