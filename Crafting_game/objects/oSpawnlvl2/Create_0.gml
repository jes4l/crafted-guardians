// Create event
spawn_amount = 7;
spawn_count = 0;
spawn_rate = 1 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;
alarm[2] = room_speed * 5;

// oEnemy
global.hp = 100;
global.spd = 1;

// oEnemyhomelander
global.hp_homelander = 300;
global.spd_homelander = 1.2;
spawn_amount_homelander = 5;
spawn_count_homelander = 0;
spawn_rate_homelander = 1 * room_speed;
homelander_spawned = false;

// oEnemyBoss
global.hp_boss = 400;
global.spd_boss = 1.5;
spawn_amount_boss = 2;
spawn_count_boss = 0;
spawn_rate_boss = 1 * room_speed;
boss_spawned = false;

// Countdown
global.countdown = 16;