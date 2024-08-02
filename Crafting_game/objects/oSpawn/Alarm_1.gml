if (instance_number(oEnemy) <= 0) {
    // Check if it's time to spawn a boss
    if (enemies_destroyed >= enemies_needed_for_boss) {
        instance_create_depth(x, y, -1, oEnemyBoss);
        enemies_destroyed = 0; // Reset the count after spawning the boss
    }
}
alarm[1] = room_speed * 5;
