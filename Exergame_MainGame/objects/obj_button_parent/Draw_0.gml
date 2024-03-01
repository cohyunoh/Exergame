/// have buttons appear in menu

draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);

draw_set_valign(fa_middle);

draw_text(x,y,button_text);

draw_set_halign(fa_left); //it is good practice to reset alignments after any draw events
draw_set_valign(fa_top); // these settings are the general defaults
// may also reset font if a standard font is had





