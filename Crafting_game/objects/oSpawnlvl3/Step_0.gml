if (global.level == 4) {
    instance_create_depth(x, y, -1, oSpawnlvl4);
	global.inventory[# 0, 0] += 5;
    global.inventory[# 4, 0] += 5;
    global.inventory[# 3, 0] += 5;
    global.coins += 50;	
    instance_destroy();
}
