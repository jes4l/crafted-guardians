// In the Create event of oSpawn or a global initialization script
global.message_set = false;
// Create event
spawn_amount = 7;
spawn_count = 0;
spawn_rate = 1 * room_speed;
alarm[0] = 1;
alarm[1] = room_speed * 3;
alarm[2] = room_speed * 3;

// oEnemy
global.hp = 200;
global.spd = 1.5;

// oEnemyhomelander
global.hp_homelander = 425;
global.spd_homelander = 1.7;
spawn_amount_homelander = 10;
spawn_count_homelander = 0;
spawn_rate_homelander = 1 * room_speed;
homelander_spawned = false;

// oEnemyBoss
global.hp_boss = 500;
global.spd_boss = 1.9;
spawn_amount_boss = 7;
spawn_count_boss = 0;
spawn_rate_boss = 1 * room_speed;
boss_spawned = false;

// Countdown
global.countdown = 3;




global.all_enemies_spawned = false;