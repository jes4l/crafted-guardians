var _dist = distance_to_object(oPlayer);

if (_dist < other.breakDistance) {
    // Check if a tower already exists
    if (instance_exists(oTower1D) || instance_exists(oTower2D) || instance_exists(oTower3D) || instance_exists(oTower4D) || instance_exists(oBomb1D) || instance_exists(oEMP1D) || instance_exists(oSpikes1D) || instance_exists(oTower2D)) {
        // A tower is yet to be placed
    } else {			
        if (global.inventory[# 0, 0] >= cost_key &&
            global.inventory[# 1, 0] >= cost_wood &&
            global.inventory[# 2, 0] >= cost_stone &&
            global.inventory[# 3, 0] >= cost_titanium &&
            global.inventory[# 4, 0] >= cost_lightning && 
            global.inventory[# 5, 0] >= cost_water &&
            global.coins >= cost_coin) {
            
            // Check if the shield is active
            if (global.shieldActive) {
                // Display error message
                oPlayer.message = "Shield is already active!";
                oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
                show_debug_message("Message set: " + oPlayer.message);
            } else {
                // Deduct the resources
                global.inventory[# 0, 0] -= cost_key;
                global.inventory[# 1, 0] -= cost_wood;
                global.inventory[# 2, 0] -= cost_stone;
                global.inventory[# 3, 0] -= cost_titanium;
                global.inventory[# 4, 0] -= cost_lightning;
                global.inventory[# 5, 0] -= cost_water;
                global.coins -= cost_coin;	
                
                // Activate the shield
                activateShield();
            }
			
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