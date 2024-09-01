if (global.level == 2) {
    instance_create_depth(x, y, -1, oSpawnlvl2);
	global.inventory[# 0, 0] += 5;
	global.coins += 50;	
    instance_destroy();
}
