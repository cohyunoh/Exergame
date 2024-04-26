/// @description Insert description here
// You can write your code in this editor
if (display){
	time+=1/30;
	
	if(ease_in){
		ease_in_time = time/0.5;
		image_xscale=lerp(0,10,animcurve_channel_evaluate(ease_in_curve,ease_in_time));
		image_yscale=lerp(0,10,animcurve_channel_evaluate(ease_in_curve,ease_in_time));
		 if(time/0.5 >= 1){
			//show_debug_message("stay");
			ease_in=false;
			stay=true;
			ease_out=false;
			time=0;
		 };
	}else if (stay){
		image_alpha=1;
		if(time >= 1){
			ease_in=false;
			stay=false;
			ease_out=true;
			time=0;
		 };
	}else if(ease_out){
		ease_out_time = time/0.5;
		image_xscale=lerp(10,0,animcurve_channel_evaluate(ease_out_curve,ease_out_time));
		image_yscale=lerp(10,0,animcurve_channel_evaluate(ease_out_curve,ease_out_time));
		if(time/0.5 >= 1){
			ease_in=false;
			stay=false;
			ease_out=false;
			time=0;
			display=false;
			obj_balance_gameProctor.busy=false;
			instance_destroy();
		 };	
	};
};