//Collision with the bullet object

instance_destroy(other);

effect_create_above(ef_explosion,x,y,1,c_red);

direction = random(360);


sprite_index = spr_apple;
x=-100;

obj_game.points -= 50;