/// @description Insert description here
// You can write your code in this editor
if(display){
	draw_self();
	if(ease_in){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_balance_comicsans);
		draw_text_transformed_color(x,y,display_num,lerp(0,6,animcurve_channel_evaluate(ease_in_curve,ease_in_time)),lerp(0,6,animcurve_channel_evaluate(ease_in_curve,ease_in_time)),0,c_black,c_black,c_black,c_black,1);
	};
	if(stay){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_balance_comicsans);
		draw_text_transformed_color(x,y,display_num,6,6,0,c_black,c_black,c_black,c_black,1);
	};
	if(ease_out){
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(fnt_balance_comicsans);
		draw_text_transformed_color(x,y,display_num,lerp(6,0,animcurve_channel_evaluate(ease_out_curve,ease_out_time)),lerp(6,0,animcurve_channel_evaluate(ease_out_curve,ease_out_time)),0,c_black,c_black,c_black,c_black,1);
	};
};

