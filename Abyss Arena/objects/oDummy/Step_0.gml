ysp += 0.1
xsp = 0

if keyboard_check(ord("A"))
{
        xsp = -3
}

if keyboard_check(ord("D"))
{
        xsp = +3
}

if place_meeting(x, y+1, oStructure)
{
        ysp = 0
        if keyboard_check(ord("W"))
        {
                ysp = -4.38
        }
}

move_and_collide(xsp, ysp, oStructure)

if keyboard_check(ord("I"))
{
	instance_create_depth(x, y, depth, oSwordAttack)
}