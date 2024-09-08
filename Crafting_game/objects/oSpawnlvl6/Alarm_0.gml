// Alarm0 event
if (global.countdown > 0) {
    global.countdown--;
} else {
    if (spawn_count_ghost < spawn_amount_ghost) {
        instance_create_depth(x, y, -1, oGhost);
        spawn_count_ghost++;
    }
}
alarm[0] = spawn_rate_ghost;



