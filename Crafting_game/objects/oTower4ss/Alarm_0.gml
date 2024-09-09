
if(instance_exists(objectToShoot))
{
    var bullet = instance_create_depth(x, y, -9, oBulletCombinationss);
    bullet.speed = 10;
    bullet.target_list = find_nearest_enemies2(range); // Store the list of nearest enemies
    bullet.current_target_index = 0; // Start with the first target
    alarm[0] = fire_rate;
}
else
{
    shooting = false;
}
