/// @description display countdown

draw_set_font(fnt_nl_timer_pre);
draw_set_colour($FFFFFFFF & $ffffff);
draw_text(x + 0, y + 0,  + string(array_get(show_time,timer_index)));