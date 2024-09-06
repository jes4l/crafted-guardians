if (instance_number(oGhost) <= 0 && spawn_count_ghost >= spawn_amount_ghost) {
    if (!enemy_spawned) {
        oPlayer.message = "The enemy is here";
        oPlayer.alarm[0] = room_speed * 3;
        show_debug_message("Message set: " + oPlayer.message);
        enemy_spawned = true;
    } else if (spawn_count_enemy < spawn_amount_enemy) {
        instance_create_depth(x, y, -1, oEnemy);
        spawn_count_enemy++;
    }
}
alarm[1] = room_speed * 1;
