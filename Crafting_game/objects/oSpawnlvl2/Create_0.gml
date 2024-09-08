spawn_amount = 5;
spawn_count = 0;
spawn_rate = 1 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

// oEnemy
global.hp = 150;
global.spd = 1;

// oEnemyBoss
global.hp_boss = 350;
global.spd_boss = 1.5;
spawn_amount_boss = 3;
spawn_count_boss = 0;
spawn_rate_boss = 1 * room_speed;

// Countdown
global.countdown = 10;
boss_spawned = false;


global.all_enemies_spawned = false;