var dir = point_direction(other.x, other.y, x, y);

if (alarm[1] < 0)
{
	image_blend = c_red;
	kb_x = lengthdir_x(4, dir);
	kb_y = lengthdir_y(4, dir);
	alarm[1] = 10;
}