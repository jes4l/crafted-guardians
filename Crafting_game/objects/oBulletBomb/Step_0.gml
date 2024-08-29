if (point_distance(x, y, target_x, target_y) <= speed)
{
    x = target_x;
    y = target_y;
    speed = 0; // Stop the bullet

    // Check if shrapnel has already been fired
    if (!shrapnel_fired)
    {
        // Create shrapnel bullets in random directions
        var num_shrapnel = 11; // Number of shrapnel bullets

        for (var i = 0; i < num_shrapnel; i++)
        {
            var angle = irandom_range(0, 359); // Generate a random angle between 0 and 359
            var shrapnel = instance_create_depth(x, y, -9, oBulletShrapnel);
            shrapnel.direction = angle;
            shrapnel.speed = 5; // Adjust speed as needed
        }

        shrapnel_fired = true; // Set the flag to true
    }

    // Add any additional behavior when the bullet stops, like dealing damage
}
else
{
    // Move the bullet towards the target
    direction = point_direction(x, y, target_x, target_y);
}
