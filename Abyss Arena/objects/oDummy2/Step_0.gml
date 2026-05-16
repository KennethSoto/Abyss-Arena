
ysp += 0.1;


xsp = 0;


if (alarm[1] >= 0)
{
    xsp = kb_x;
	ysp = kb_y;
}


move_and_collide(xsp, ysp, oStructure);