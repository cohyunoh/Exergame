/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_nl_rounddisp);
if (timer > 5) {
	draw_set_colour($FFFFFFFF & $ffffff);
}
else {
	draw_set_colour($0000FF);
}
draw_text(x + 0, y + 0,  + string(timer));