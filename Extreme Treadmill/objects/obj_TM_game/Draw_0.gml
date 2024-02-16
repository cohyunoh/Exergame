/// @description Insert description here
// You can write your code in this editor
// Display the timer
draw_set_font(fnt_font_game);
draw_set_color(c_black);
var _minutes = string(floor(_total_seconds / 60));
var _seconds = string(_total_seconds mod 60);

// Add leading zeros manually if needed
if (string_length(_minutes) == 1) {
    _minutes = "0" + _minutes;
}

if (string_length(_seconds) == 1) {
    _seconds = "0" + _seconds;
}

draw_text(x, y, _minutes + ":" + _seconds);




