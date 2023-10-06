// player motion

hinput = keyboard_check(vk_right)-keyboard_check(vk_left);
vinput = keyboard_check(vk_down)-keyboard_check(vk_up);

spd = 4.5;

x += hinput*spd;
y += vinput*spd;

move_wrap(true,true,0)

if hinput<0
{
	image_angle =180;
	image_yscale=-1;
}
else if hinput>0
{
	image_angle = 0;
	image_yscale=1;
}

if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x,y,"Instances",obj_bullet)
}

