/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
for(i=0;i<segments;i++){
	draw_pie(x,y,angle,360,colors[i%array_length(colors)],radius,1,starting_rot+angles[i]);
}
for(i=0;i<segments;i++){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed_color(x+cos(degtorad(starting_rot+angles[i]+(angle/2)))*(radius/2+30),y-sin(degtorad(starting_rot+angles[i]+(angle/2)))*(radius/2+30),string(segments-i),4.5,4.5,starting_rot+angles[i]+(angle/2-90),c_black,c_black,c_black,c_black,1);
}
for(i=0;i<array_length(poles);i++){
	poles[i].x += cos(degtorad(starting_rot+angles[i]));
	poles[i].y -= sin(degtorad(starting_rot+angles[i]));
}

if(spin_back){
	starting_rot-=wheel_speed;
	if(starting_rot<=0){
		spin_back=false;
		is_spinning=false;
	}
}
if (speed_up){
	//show_debug_message("speeding up");
	starting_rot += wheel_speed*0.1*sqr(val);
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
	starting_rot += currentspeed;
	if(starting_rot>1000){
		randomize();
		rand = random_range(0,5200);
		if(rand<1000){
			//show_debug_message("switch to slow down");
			constant_speed = false
			slow_down = true
		}
		if(starting_rot>6000){
			//show_debug_message("switch to slow down");
			constant_speed = false
			slow_down = true
		}
	};
};
if(slow_down){
	//show_debug_message("stop");
	starting_rot+=currentspeed*(1/sqr(rand1))*sqr(val1-rand1);
	val1+=rand1/1000;
	//show_debug_message(string(currentspeed*(1/sqr(rand1))*sqr(val1-rand1)));
	if(currentspeed*(1/sqr(rand1))*sqr(val1-rand1) <= 0){
		is_spinning =false;
		slow_down=false;
		show_debug_message(string(starting_rot%360));
	};
};



