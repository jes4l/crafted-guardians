// Alarm3 event
if (instance_number(oEnemyHomelander) <= 0 && spawn_count_homelander >= spawn_amount_homelander) {
    if (!boss_spawned) {
        oPlayer.message = "The Red Ghost Has Spawned";
        oPlayer.alarm[0] = room_speed * 3;
        show_debug_message("Message set: " + oPlayer.message);
        boss_spawned = true;
    } else if (spawn_count_boss < spawn_amount_boss) {
        instance_create_depth(x, y, -1, oEnemyBoss);
        spawn_count_boss++;
    } else if (instance_number(oEnemyBoss) <= 0 && repeat_sequence < max_repeats) {
        // Reset spawn counts and flags to repeat the sequence
        spawn_count_ghost = 0;
        spawn_count_enemy = 0;
        spawn_count_homelander = 0;
        spawn_count_boss = 0;
        ghost_spawned = false;
        enemy_spawned = false;
        homelander_spawned = false;
        boss_spawned = false;
        
        // Reset the alarms without resetting the countdown
        alarm[0] = 1;
        alarm[1] = room_speed * 3;
        alarm[2] = room_speed * 3;
        alarm[3] = room_speed * 3;
        
        // Increment the repeat counter
        repeat_sequence++;
    } else if (instance_number(oEnemyBoss) <= 0 && repeat_sequence >= max_repeats) {
        // Set the flag to true after all enemies have been spawned and the boss is defeated
        global.all_enemies_spawned = true;
        show_debug_message("All enemies have been spawned and defeated.");
        
        // Send message to the player
        oPlayer.message = "Destroy the tower to vanquish the ghosts";
        show_debug_message("Message set: " + oPlayer.message);
    }
}
alarm[3] = room_speed * 5;
