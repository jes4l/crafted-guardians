/// @description Find the nearest 3 enemies within range and change their colors
/// @param range The range within which to find enemies

function find_nearest_enemies_arc(range) {
    var nearest_enemies = array_create(3, noone);

    // Find the nearest enemy
    var enemies = ds_priority_create();
    with (oEnemy) {
        if (point_distance(x, y, other.x, other.y) <= range) {
            ds_priority_add(enemies, id, point_distance(x, y, other.x, other.y));
        } else {
            image_blend = c_white; // Revert color to original
        }
    }
    with (oEnemyHomelander) {
        if (point_distance(x, y, other.x, other.y) <= range) {
            ds_priority_add(enemies, id, point_distance(x, y, other.x, other.y));
        } else {
            image_blend = c_white; // Revert color to original
        }
    }
    with (oEnemyBoss) {
        if (point_distance(x, y, other.x, other.y) <= range) {
            ds_priority_add(enemies, id, point_distance(x, y, other.x, other.y));
        } else {
            image_blend = c_white; // Revert color to original
        }
    }

    if (!ds_priority_empty(enemies)) {
        nearest_enemies[0] = ds_priority_delete_min(enemies);
    }
    ds_priority_destroy(enemies);

    // Find the 2nd nearest enemy from the 1st nearest enemy
    if (nearest_enemies[0] != noone) {
        enemies = ds_priority_create();
        with (oEnemy) {
            if (point_distance(nearest_enemies[0].x, nearest_enemies[0].y, other.x, other.y) <= range && id != nearest_enemies[0].id) {
                ds_priority_add(enemies, id, point_distance(nearest_enemies[0].x, nearest_enemies[0].y, other.x, other.y));
            }
        }
        with (oEnemyHomelander) {
            if (point_distance(nearest_enemies[0].x, nearest_enemies[0].y, other.x, other.y) <= range && id != nearest_enemies[0].id) {
                ds_priority_add(enemies, id, point_distance(nearest_enemies[0].x, nearest_enemies[0].y, other.x, other.y));
            }
        }
        with (oEnemyBoss) {
            if (point_distance(nearest_enemies[0].x, nearest_enemies[0].y, other.x, other.y) <= range && id != nearest_enemies[0].id) {
                ds_priority_add(enemies, id, point_distance(nearest_enemies[0].x, nearest_enemies[0].y, other.x, other.y));
            }
        }

        if (!ds_priority_empty(enemies)) {
            nearest_enemies[1] = ds_priority_delete_min(enemies);
        }
        ds_priority_destroy(enemies);
    }

    // Find the 3rd nearest enemy from the 2nd nearest enemy
    if (nearest_enemies[1] != noone) {
        enemies = ds_priority_create();
        with (oEnemy) {
            if (point_distance(nearest_enemies[1].x, nearest_enemies[1].y, other.x, other.y) <= range && id != nearest_enemies[0].id && id != nearest_enemies[1].id) {
                ds_priority_add(enemies, id, point_distance(nearest_enemies[1].x, nearest_enemies[1].y, other.x, other.y));
            }
        }
        with (oEnemyHomelander) {
            if (point_distance(nearest_enemies[1].x, nearest_enemies[1].y, other.x, other.y) <= range && id != nearest_enemies[0].id && id != nearest_enemies[1].id) {
                ds_priority_add(enemies, id, point_distance(nearest_enemies[1].x, nearest_enemies[1].y, other.x, other.y));
            }
        }
        with (oEnemyBoss) {
            if (point_distance(nearest_enemies[1].x, nearest_enemies[1].y, other.x, other.y) <= range && id != nearest_enemies[0].id && id != nearest_enemies[1].id) {
                ds_priority_add(enemies, id, point_distance(nearest_enemies[1].x, nearest_enemies[1].y, other.x, other.y));
            }
        }

        if (!ds_priority_empty(enemies)) {
            nearest_enemies[2] = ds_priority_delete_min(enemies);
        }
        ds_priority_destroy(enemies);
    }

    // Change colors
    if (nearest_enemies[0] != noone) {
        nearest_enemies[0].image_blend = c_red;
    }
    if (nearest_enemies[1] != noone) {
        nearest_enemies[1].image_blend = c_yellow;
    }
    if (nearest_enemies[2] != noone) {
        nearest_enemies[2].image_blend = c_blue;
    }

    // Revert color of enemies not in the nearest 3
    with (oEnemy) {
        if (!array_contains(nearest_enemies, id)) {
            image_blend = c_white;
        }
    }
    with (oEnemyHomelander) {
        if (!array_contains(nearest_enemies, id)) {
            image_blend = c_white;
        }
    }
    with (oEnemyBoss) {
        if (!array_contains(nearest_enemies, id)) {
            image_blend = c_white;
        }
    }

    // Return the array of nearest enemies
    return nearest_enemies;
}
