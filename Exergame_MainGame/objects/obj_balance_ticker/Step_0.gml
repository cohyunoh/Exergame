/// @description Insert description here
// You can write your code in this edito
if(obj_balance_wheel.is_spinning){
	if(move){
		for(i=0;i<array_length(obj_balance_wheel.poles);i++){
			if(place_meeting(x,y,obj_balance_wheel.poles[i])){
				while(place_meeting(x,y,obj_balance_wheel.poles[i])){
					image_angle -= 0.01;
				}
				//show_debug_message("bang");
			}else{
				if(image_angle<180){
					image_angle+=1.0
					//show_debug_message("going back");
				}
			}
		}
		if(image_angle>=180){
			move=false;
		}
	}
	//show_debug_message(image_angle);
}