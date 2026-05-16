if (instance_exists(owner))
{
    switch (attack_dir)
    {
        case "side":

            image_angle = 0;
            image_xscale = owner.facing;

            x = owner.x + (offset_x * owner.facing);
            y = owner.y;

        break;


        case "up":

            image_angle = 90;

            x = owner.x;
            y = owner.y - 16;

        break;


        case "down":

            image_angle = -90;

            x = owner.x;
            y = owner.y + 16;

        break;
    }
}
else
{
    instance_destroy();
}