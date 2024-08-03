spawn_amount = 3;
enemies_needed_for_boss = 3;
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
enemies_destroyed = 0;

// Countdown
global.countdown = 5;
alarm[2] = room_speed; // Set alarm[2] to handle the countdown
