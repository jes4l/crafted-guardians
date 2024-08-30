var _dist = distance_to_object(oPlayer);

if (_dist < other.breakDistance) {
    // Check if a tower already exists
    if (instance_exists(oTower1D) || instance_exists(oTower2D) /*|| instance_exists(oTower3D*/) {
        // A tower is yet to be placed
    } else {			
        if (global.inventory[# 0, 0] >= cost_wood &&
            global.inventory[# 4, 0] >= cost_stone &&
            global.inventory[# 1, 0] >= cost_key &&
            global.inventory[# 2, 0] >= cost_brick &&
            global.inventory[# 3, 0] >= cost_titanium &&
            global.inventory[# 5, 0] >= cost_lightning) {
            instance_create_depth(mouse_x, mouse_y, -9, oTower2D);
            // Deduct the resources
            global.inventory[# 0, 0] -= cost_wood;
            global.inventory[# 4, 0] -= cost_stone;
            global.inventory[# 1, 0] -= cost_key;
            global.inventory[# 2, 0] -= cost_brick;
            global.inventory[# 3, 0] -= cost_titanium;
            global.inventory[# 5, 0] -= cost_lightning;					
			
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
