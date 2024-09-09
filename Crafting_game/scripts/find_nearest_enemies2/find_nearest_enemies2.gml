// Script to find the nearest 3 enemies within range of oTower4 and change their colors

/// @description Find the nearest 3 enemies within range and change their colors
/// @param range The range within which to find enemies

function find_nearest_enemies2(range) {
    var enemies = ds_priority_create();
    var nearest_enemies = [];

    // Add all enemies within range to the priority queue
    with (oE1) {
        if (point_distance(other.x, other.y, x, y) <= range) {
            ds_priority_add(enemies, id, point_distance(other.x, other.y, x, y));
        } else {
            image_blend = c_white; // Revert color to original
        }
    }
    with (oE2) {
        if (point_distance(other.x, other.y, x, y) <= range) {
            ds_priority_add(enemies, id, point_distance(other.x, other.y, x, y));
        } else {
            image_blend = c_white; // Revert color to original
        }
    }
    with (oE3) {
        if (point_distance(other.x, other.y, x, y) <= range) {
            ds_priority_add(enemies, id, point_distance(other.x, other.y, x, y));
        } else {
            image_blend = c_white; // Revert color to original
        }
    }

    // Retrieve the nearest 3 enemies from the priority queue and change their colors
    for (var i = 0; i < 3; i++) {
        if (!ds_priority_empty(enemies)) {
            var nearest_enemy = ds_priority_delete_min(enemies);
            array_push(nearest_enemies, nearest_enemy);
            with (nearest_enemy) {
                if (i == 0) {
                    image_blend = c_white; // Nearest enemy color blue
                } else if (i == 1) {
                    image_blend = c_white; // Second nearest enemy color yelloe
                } else if (i == 2) {
                    image_blend = c_white; // Third nearest enemy color red
                }
            }
        }
    }

    // Revert color of enemies not in the nearest 3
    with (oE1) {
        if (!array_contains(nearest_enemies, id)) {
            image_blend = c_white;
        }
    }
    with (oE2) {
        if (!array_contains(nearest_enemies, id)) {
            image_blend = c_white;
        }
    }
    with (oE3) {
        if (!array_contains(nearest_enemies, id)) {
            image_blend = c_white;
        }
    }

    // Clean up the priority queue
    ds_priority_destroy(enemies);

    // Return the array of nearest enemies
    return nearest_enemies;
}
