ysp += 0.1;
xsp = 0;

if keyboard_check(ord("A"))
{
	sprite_index = sDummy1_Left;
        xsp = -3;
		facing = point_direction(0, 0, xsp, ysp);
		image_xscale = -1;
}

if keyboard_check(ord("D"))
{
	sprite_index = sDummy1_Right;
        xsp = +3;
		facing = point_direction(0, 0, xsp, ysp);
		image_xscale = 1;
}

if place_meeting(x, y+1, oStructure)
{
        ysp = 0;
        if keyboard_check_pressed(ord("W"))
        {
                ysp = -4.38;
				facing = point_direction(0, 0, xsp, ysp);
        }
}

if keyboard_check(ord("S"))
{
	facing = point_direction(0, 0, xsp, ysp);
}

move_and_collide(xsp, ysp, oStructure);

if keyboard_check_pressed(ord("I"))
{
	//var _ints = instance_create_depth(x, y, depth, oSwordAttack);
	//_ints.image_angle = facing;
	var atk = instance_create_layer(x, y, "Instances", oSwordAttack);
	atk.owner = id;
	
}
