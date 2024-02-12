/// @description Insert description here
// You can write your code in this editor
var _steps = 50;
var _xx = 683;
var _yy = 384;
var _radius = 350;
draw_primitive_begin(pr_trianglefan);
draw_vertex(_xx, _yy);
for(var i = 0; i <= _steps; ++i;)
{
    draw_vertex(_xx + lengthdir_x(_radius,120 * i / _steps), _yy + lengthdir_y(_radius, 120 * i / _steps));
}
draw_primitive_end();
