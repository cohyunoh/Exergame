if (finished_spin){
	if (winning_angle != -1){
		for(i=0;i<array_length(angles);i++){
			if(winning_angle>=angles[i] and winning_angle<angles[i]+obj_balance_wheel.angle){
				//show_debug_message("Winning Angle: " + string(winning_angle));
				//show_debug_message("Lower Angle: " + string(angles[i]));
				winning_num=nums[i];
				finished_spin=false;
				countdown = true;
				break;
			};
		};
		
	};
};

if(countdown){
	if(winning_num>0){
		if(!busy){
			busy = true;
			instance_display = instance_create_layer(1920/2,1080,"display_wheel_rm",obj_balance_numberDisplay);
			instance_display.display_num = winning_num;
			instance_display.display = true;
			instance_display.ease_in = true;
			winning_num += -1;
		}
	}else{
		pause=false;
	};
};