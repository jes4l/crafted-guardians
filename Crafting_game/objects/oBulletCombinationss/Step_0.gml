if (current_target_index < array_length(target_list)) {
    var target = target_list[current_target_index];
    if (instance_exists(target)) {
        direction = point_direction(x, y, target.x, target.y);
        if (point_distance(x, y, target.x, target.y) < 10) {
            // Hit the target
            if (target.object_index == oE1) {
                target.hp -= 0;
            } else if (target.object_index == oE2) {
                target.hp -= 0;
            } else if (target.object_index == oE3) {
                target.hp -= 0;
            }

            // Check if the target's hp is less than or equal to 0
/*            if (target.hp <= 0) {
                with (target) instance_destroy();
				
            }*/

            current_target_index++;
        }
    } else {
        current_target_index++;
    }
} else {
    instance_destroy();
}
