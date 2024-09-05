if (global.level == 3) {
    instance_create_depth(x, y, -1, oSpawnlvl3);
	global.inventory[# 1, 0] += 5;
    global.inventory[# 2, 0] += 5;
	global.coins += 50;	
    instance_destroy();
}

