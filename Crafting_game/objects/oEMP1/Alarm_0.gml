if (shooting) {
    var enemies = array_create(0);
    with (oEnemy) {
        if (point_distance(x, y, other.x, other.y) <= other.range) {
            array_push(enemies, id);
        }
    }
    with (oEnemyBoss) {
        if (point_distance(x, y, other.x, other.y) <= other.range) {
            array_push(enemies, id);
        }
    }
    with (oEnemyHomelander) {
        if (point_distance(x, y, other.x, other.y) <= other.range) {
            array_push(enemies, id);
        }
    }
    for (var i = 0; i < array_length(enemies); i++) {
        var bullet = instance_create_depth(x, y, -9, oBulletEMP);
        bullet.speed = 10;
        bullet.direction = point_direction(x, y, enemies[i].x, enemies[i].y);
    }
    alarm[0] = fire_rate;
} else {
    shooting = false;
}