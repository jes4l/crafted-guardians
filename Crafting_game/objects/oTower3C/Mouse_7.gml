var _dist = distance_to_object(oPlayer);

if (_dist < other.breakDistance) {
    // Check if a tower already exists
    if (instance_exists(oTower1D) || instance_exists(oTower2D) /*|| instance_exists(oTower3D*/) {
        // A tower is yet to be placed
    } else {
        // Check if the player has enough wood and stone
        if (global.inventory[# 0, 0] >= cost_wood && global.inventory[# 4, 0] >= cost_stone) {
            instance_create_depth(mouse_x, mouse_y, -9, oTower3D);
            global.inventory[# 0, 0] -= cost_wood;
            global.inventory[# 4, 0] -= cost_stone;
        } else {
            // Set error message on oPlayer
            oPlayer.message = "Not enough resources to purchase";
            oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
            show_debug_message("Message set: " + oPlayer.message);
        }
    }
} else {
    // Set error message on oPlayer
    oPlayer.message = "Come Closer to Unlock";
    oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
    show_debug_message("Message set: " + oPlayer.message);
}
