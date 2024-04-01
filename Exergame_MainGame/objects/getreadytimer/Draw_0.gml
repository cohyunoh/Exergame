/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(fnt_timer);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var ti="";
ti+=string(t_sec);
ti+=":";
ti+=string(t_mil);
draw_text(540,960,"Get Ready. . ."+ "\n"+ ti);















