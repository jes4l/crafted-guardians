if (global.level == 6) {
    instance_create_depth(x, y, -1, oSpawnlvl6);
	global.inventory[# 1, 0] += 5;
    global.inventory[# 2, 0] += 5;
    global.inventory[# 3, 0] += 5;
    global.inventory[# 4, 0] += 5;
	global.inventory[# 5, 0] += 5;
	global.coins += 50;	
    instance_destroy();
}
