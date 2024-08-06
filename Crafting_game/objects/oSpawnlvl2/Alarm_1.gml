if (instance_number(oEnemy) <= 0 && spawn_count >= spawn_amount) {
    if (!homelander_spawned) {
        oPlayer.message = "The HomeLander Has Landed";
        oPlayer.alarm[0] = room_speed * 3;
        show_debug_message("Message set: " + oPlayer.message);
        homelander_spawned = true;
    } else if (spawn_count_homelander < spawn_amount_homelander) {
        instance_create_depth(x, y, -1, oEnemyHomelander);
        spawn_count_homelander++;
    }
}
alarm[1] = room_speed * 1;