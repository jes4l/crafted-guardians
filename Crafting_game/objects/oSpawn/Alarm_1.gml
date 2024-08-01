if (global.countdown <= 0 && instance_number(oEnemy) <= 0) {
    spawn_count = 0;
    spawn_amount++;
    global.level++;
    global.hp += 10;
    global.spd += 0.1;
    spawn_rate = max(1, spawn_rate - 2.5); // Prevent spawn_rate from going negative
    alarm[0] = spawn_rate;
}

alarm[1] = room_speed * 5;
