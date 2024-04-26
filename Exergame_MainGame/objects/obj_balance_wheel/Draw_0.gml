// redraw the wheel every time to display the angle change
for(i=0;i<segments;i++){
	draw_pie(x,y,angle,360-angle,colors[i%array_length(colors)],radius,1,image_angle+angles[i]);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_balance_comicsans);
	//draw_text_transformed_color(x+cos(degtorad(image_angle+angles[i]+(angle/2)))*(radius/2),y-sin(degtorad(image_angle+angles[i]+(angle/2)))*(radius/2),string(angles[segments-(i+1)]+angle) + "-" + string(angles[segments-(i+1)]),1,1,image_angle+angles[i]+(angle/2-90),c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(x+cos(degtorad(image_angle+angles[i]+(angle/2)))*(radius/2+50),y-sin(degtorad(image_angle+angles[i]+(angle/2)))*(radius/2+50),string(i+1),4.5,4.5,image_angle+angles[i]+(angle/2-90),c_black,c_black,c_black,c_black,1);
};

// move the poles as well
for(i=0;i<array_length(poles);i++){
		poles[i].x = x + radius * dcos(pole_phases[i]+image_angle);
		poles[i].y = y - radius * dsin(pole_phases[i]+image_angle);
}

/*
if(is_spinning){
	randomize();
	image_angle = random_range(0,360);
	is_spinning = false;
	show_debug_message(image_angle)
};
*/

if(is_spinning){
	time += 1/30;
	show_debug_message(time)
	
	if(reverse){
		if(obj_balance_ticker.image_angle>=180){
			is_spinning=false;
			reverse=false;
			if (image_angle%360 - 90 < 0){
				obj_balance_gameProctor.finished_spin=true;
				obj_balance_gameProctor.pause=true;
				obj_balance_gameProctor.winning_angle=image_angle%360 + 270;
			}else{
				obj_balance_gameProctor.finished_spin=true;
				obj_balance_gameProctor.pause=true;
				obj_balance_gameProctor.winning_angle=image_angle%360 - 90;
			}
		}else{
			image_angle -= wheel_speed*lerp(0,1,animcurve_channel_evaluate(reverse_curve,time/1.5));
		}
	}

	if (speed_up){
		image_angle += wheel_speed*lerp(0,1,animcurve_channel_evaluate(speed_up_curve,time/time_speed_up));
		if(time/time_speed_up >= 1){
			speed_up=false;
			constant_speed = true;
			currentspeed = wheel_speed*lerp(0,1,animcurve_channel_evaluate(speed_up_curve,time/time_speed_up));
			time = 0;
		}
	}
	if(constant_speed = true){
		//show_debug_message("constant speed");
		//show_debug_message(rand1);
		//show_debug_message(image_angle);
		image_angle += currentspeed;
		if(time/time_constant >= 1){
			time = 0;
			constant_speed = false
			slow_down = true
		}
	}
	if(slow_down){
		//show_debug_message("stop");
		//show_debug_message(currentspeed*(1/sqr(rand2))*sqr(val1-rand2));
		image_angle+=currentspeed*lerp(0,1,animcurve_channel_evaluate(slow_down_curve,time/time_slow_down));
		if(time/time_slow_down >= 1){
			time=0;
			slow_down=false;
			reverse=true;	
		}
	}
}




