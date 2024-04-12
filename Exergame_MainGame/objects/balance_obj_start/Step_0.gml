/// @description Insert description here
// You can write your code in this editor
if (hovered) {
	count = 0;
}else{
	if (count >= 30){
		if (image_alpha==1){
			image_alpha = 0.6
		} else {
			image_alpha = 1.0
		};
		count = 0;
	}else{
		count += 1;
	};
};