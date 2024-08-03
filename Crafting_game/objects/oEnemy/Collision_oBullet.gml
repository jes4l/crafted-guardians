hp -= 20;
with(other) instance_destroy();

if (hp <= 0) {
    // Increase the enemies_destroyed count in oSpawn
    with (oSpawn) {
        enemies_destroyed++;
    }
    instance_destroy();
}
