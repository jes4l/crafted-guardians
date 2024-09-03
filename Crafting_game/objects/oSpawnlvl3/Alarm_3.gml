if (instance_number(oEnemyBoss) <= 0 && spawn_count_boss >= spawn_amount_boss) {
    if (!pheonix_spawned) {
        oPlayer.message = "A Pheonix has arisen from the fire";
        oPlayer.alarm[0] = room_speed * 3;
        show_debug_message("Message set: " + oPlayer.message);
        pheonix_spawned = true;
    } else if (spawn_count_pheonix < spawn_amount_pheonix) {
        instance_create_depth(x, y, -1, oPheonix);
        spawn_count_pheonix++;
    }
}
alarm[3] = room_speed * 3;
