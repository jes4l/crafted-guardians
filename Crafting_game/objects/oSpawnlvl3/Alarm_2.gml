// Alarm2 event
if (instance_number(oEnemyHomelander) <= 0 && spawn_count_homelander >= spawn_amount_homelander) {
    if (!boss_spawned) {
        oPlayer.message = "The Boss Has Spawned";
        oPlayer.alarm[0] = room_speed * 3;
        show_debug_message("Message set: " + oPlayer.message);
        boss_spawned = true;
    } else if (spawn_count_boss < spawn_amount_boss) {
        instance_create_depth(x, y, -1, oEnemyBoss);
        spawn_count_boss++;
    }
}
alarm[2] = room_speed * 5;
