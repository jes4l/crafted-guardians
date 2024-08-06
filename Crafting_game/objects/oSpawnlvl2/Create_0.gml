spawn_amount = 5;
spawn_count = 0;
spawn_rate = 1 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

// oEnemy
global.hp = 50;
global.spd = 1;

// oEnemyBoss
global.hp_boss = 200;
global.spd_boss = 1.5;
spawn_amount_boss = 5;
spawn_count_boss = 0;
spawn_rate_boss = 1 * room_speed;

// Countdown
global.countdown = 10;
alarm[2] = room_speed;
boss_spawned = false;