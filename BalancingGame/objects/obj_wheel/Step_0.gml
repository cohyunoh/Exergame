if (is_spinning){
	image_angle += abs(sin(degtorad(new_wheel_angle - image_angle))*wheel_speed);
};

if (image_angle == 0){
	is_spinning = false;
};