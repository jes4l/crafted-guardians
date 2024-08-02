if (hp <= 0) {
    // Increase the enemies_destroyed count in oSpawn
    with (oSpawn) {
        enemies_destroyed++;
    }
    instance_destroy();
}
