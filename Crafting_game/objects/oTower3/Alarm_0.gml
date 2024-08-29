if(instance_exists(objectToShoot) && !bullet_active)
{
    var bullet = instance_create_depth(x, y, -9, oBulletBomb);
    bullet.target_x = objectToShoot.x;
    bullet.target_y = objectToShoot.y;
    bullet.speed = 6;
    bullet.direction = point_direction(x, y, bullet.target_x, bullet.target_y);
    bullet.tower = id; // Reference to the tower
    bullet_active = true; // Set bullet status to active
}
else
{
    shooting = false;
}
