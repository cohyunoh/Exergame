/// @description Insert description here
// You can write your code in this editor
display_num=0;
display=false;
ease_in=false;
stay=false;
ease_out=false;
time=0;
ease_in_time=0;
ease_out_time=0;
x=960;
y=540;
image_xscale=0;
image_yscale=0;
ease_in_curve = animcurve_get_channel(ANM_balance_numDisp,"curve1");
ease_out_curve= animcurve_get_channel(ANM_balance_numDisp,"curve2");