if (instance_exists(owner))
{
    x = owner.x + (offset_x * owner.image_xscale);
    y = owner.y + offset_y;

    image_xscale = owner.image_xscale;
}
else
{
    instance_destroy();
}