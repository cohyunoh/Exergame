//What happens if the play collides with the rock

effect_create_above(ef_flare,x,y,1,c_orange)
instance_destroy();
// set/create the first [0] alarm attribute to countdown 120 frames
// Alarm made for obj_game because the player object is being destroyed, the obj must exist for the alarm
obj_game.alarm[0] = 120;
