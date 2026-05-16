ysp += 0.1;
xsp = 0;

if keyboard_check(ord("A"))
{
    sprite_index = sDummy1_Right;
    xsp = -3;
    facing = -1;
}

if keyboard_check(ord("D"))
{
    sprite_index = sDummy1_Right;
    xsp = 3;
    facing = 1;
}

image_xscale = facing;

if place_meeting(x, y+1, oStructure)
{
    ysp = 0;

    if keyboard_check_pressed(ord("W"))
    {
        ysp = -4.38;
    }
}

move_and_collide(xsp, ysp, oStructure);

if keyboard_check_pressed(ord("I"))
{
    var atk = instance_create_layer(x, y, "Instances", oSwordAttack);

    atk.owner = id;

    if keyboard_check(ord("S"))
    {
        atk.attack_dir = "down";

        atk.image_angle = -90;

        atk.x = x;
        atk.y = y + 16;
    }

    else if keyboard_check(ord("W"))
    {
        atk.attack_dir = "up";

        atk.image_angle = 90;

        atk.x = x;
        atk.y = y - 16;
    }

    else
    {
        atk.attack_dir = "side";

        atk.image_xscale = facing;

        atk.x = x + (16 * facing);
        atk.y = y;
    }
}