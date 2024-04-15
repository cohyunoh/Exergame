for(i=0;i<segments;i++){
	draw_pie(x,y,angle,360-angle,colors[i%array_length(colors)],radius,1,rotate+angles[i]);
}
for(i=0;i<segments;i++){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_balance_comicsans);
	draw_text_transformed_color(x+cos(degtorad(rotate+angles[i]+(angle/2)))*(radius/2+50),y-sin(degtorad(rotate+angles[i]+(angle/2)))*(radius/2+50),string(segments-i),4.5,4.5,rotate+angles[i]+(angle/2-90),c_black,c_black,c_black,c_black,1);
}

if(is_spinning){
	for(i=0;i<array_length(poles);i++){
		poles[i].x = x + radius * dcos(pole_phases[i]+rotate);
		poles[i].y = y - radius * dsin(pole_phases[i]+rotate);
	}
}
if(reverse){
	if(obj_balance_ticker.image_angle>=180){
		is_spinning=false;
		reverse=false;
		show_debug_message(string(rotate%360));
		done=true;
		obj_balance_gameProctor.finished_spin=true;
		obj_balance_gameProctor.winning_angle=rotate%360;
	}else{
		rotate-=(1/sqr(200))*sqr(200-val2);
		val2+=0.01;
	}
}

if (speed_up){
	//show_debug_message("speeding up");
	rotate += wheel_speed*0.1*sqr(val);
	val+=0.05;
	if (0.1*sqr(val)>=0.75){
		speed_up=false;
		constant_speed = true;
		currentspeed = wheel_speed*0.1*sqr(val);
		//show_debug_message("switch to constant");
	}
}
if(constant_speed = true){
	show_debug_message("constant speed");
	show_debug_message(rand1);
	show_debug_message(rotate);
	rotate += currentspeed;
	if(rotate>1000){
		if(rotate>=rand1){
			//show_debug_message("switch to slow down");
			constant_speed = false
			slow_down = true
		}
	}
}
if(slow_down){
	//show_debug_message("stop");
	//show_debug_message(currentspeed*(1/sqr(rand2))*sqr(val1-rand2));
	rotate+=currentspeed*(1/sqr(rand2))*sqr(rand2-val1);
	val1+=rand2/100;
	if(currentspeed*(1/sqr(rand2))*sqr(rand2-val1) <= 0){
		slow_down=false;
		reverse=true;	
	}
}



