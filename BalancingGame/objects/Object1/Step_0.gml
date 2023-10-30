//STEP EVENT
if (is_rotating == 1) //if its set to rotate the object
{
     image_angle += sin(degtorad(point_dir - image_angle))*rspeed;
}