// Create event
alarm[0] = 1;
alarm[1] = room_speed * 3;
alarm[2] = room_speed * 3;
alarm[3] = room_speed * 3;

// oEnemyGhost
global.hp_ghost = 35;
global.spd_ghost = 2;
spawn_amount_ghost = 1;
spawn_count_ghost = 0;
spawn_rate_ghost = 1 * room_speed;
ghost_spawned = false;


// oEnemy
global.hp_enemy = 175;
global.spd_enemy = 1.5;
spawn_amount_enemy = 7;
spawn_count_enemy = 0;
spawn_rate_enemy= 1 * room_speed;
enemy_spawned = false;


// oEnemyhomelander
global.hp_homelander = 350;
global.spd_homelander = 1.7;
spawn_amount_homelander = 10;
spawn_count_homelander = 0;
spawn_rate_homelander = 1 * room_speed;
homelander_spawned = false;

// oEnemyBoss
global.hp_boss = 425;
global.spd_boss = 1.9;
spawn_amount_boss = 7;
spawn_count_boss = 0;
spawn_rate_boss = 1 * room_speed;
boss_spawned = false;

// Countdown
global.countdown = 3;

// repeat
repeat_sequence = 0;
max_repeats = 1;