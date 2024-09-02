spawn_amount = 5;
spawn_count = 0;
spawn_rate = 1 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 5;

// Game
global.level = 1;
global.life = 3;
global.coins = 1000;

// oEnemy
global.hp = 50;
global.spd = 1;

// oEnemyBoss
global.hp_boss = 200;
global.spd_boss = 1.5;
spawn_amount_boss = 1;
spawn_count_boss = 0;
spawn_rate_boss = 1 * room_speed;

// oEnemyGhost
global.hp_ghost = 11;
global.spd_ghost = 0.8;
spawn_amount_ghost = 1;
spawn_count_ghost = 0;
spawn_rate_ghost = 1 * room_speed;
ghost_spawned = false;


// Countdown
global.countdown = 10;
boss_spawned = false;