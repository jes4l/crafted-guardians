if (instance_number(oEnemy) <= 0) {
/*    spawn_count = 0;
    spawn_amount++;
    global.level++;

    // Increase HP, speed and decrease spawn rate
    global.hp += 10 * ln(1 + global.level / 10.0);
    global.spd += 0.1 * ln(1 + global.level / 10.0);
    spawn_rate -= 2.5 / (1 + global.level / 10.0);

    alarm[0] = spawn_rate;
*/
    // Check if it's time to spawn a boss
    if (enemies_destroyed >= enemies_needed_for_boss) {
        instance_create_depth(x, y, -1, oEnemyBoss);
        enemies_destroyed = 0; // Reset the count after spawning the boss
    }
}

alarm[1] = room_speed * 5;
