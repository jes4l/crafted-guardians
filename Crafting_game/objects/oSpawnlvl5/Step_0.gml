if (global.level == 6) {
    instance_create_depth(x, y, -1, oSpawnlvl6);
	global.inventory[# 1, 0] += 12;
    global.inventory[# 2, 0] += 12;
    global.inventory[# 3, 0] += 12;
    global.inventory[# 4, 0] += 12;
	global.inventory[# 5, 0] += 12;
	global.coins += 100;	
    instance_destroy();
}
