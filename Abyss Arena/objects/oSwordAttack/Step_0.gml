if (instance_exists(owner))
{
    image_xscale = owner.facing;

    x = owner.x + (offset_x * owner.facing);
    y = owner.y + offset_y;
}
else
{
    instance_destroy();
}