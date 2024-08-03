if (instance_number(oEnemy) <= 0 && spawn_count >= spawn_amount && !boss_spawned) {
    // Spawn the boss if there are no enemies left
    instance_create_depth(x, y, -1, oEnemyBoss);
    boss_spawned = true;
}
alarm[1] = room_speed * 5;
