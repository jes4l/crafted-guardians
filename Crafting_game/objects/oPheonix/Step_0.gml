if (hp <= 0) {
	global.coins += 15;
    // Destroy the ghost
    instance_destroy();
    
    // Destroy the existing held item (oPickaxe)
    if (instance_exists(oPlayer.heldItem)) {
        show_debug_message("Destroying existing held item in oGhost step event.");
        instance_destroy(oPlayer.heldItem);
    }
    
    // Find the instance of sShopMetal
    var sShopMetalInstance = instance_find(oShopMetal, 0);
    if (sShopMetalInstance != noone) {
        // Set the image_index to 1
        global.shopMetalActive = false;
        sShopMetalInstance.image_index = 1;
        
        // Create an instance of oPickaxe2 at (208, 588)
        instance_create_layer(208, 588, "Instances", oPickaxe2);
        show_debug_message("oPickaxe2 created at (208, 598).");
        
        // Send a message to the player
        oPlayer.message = "The Anvil flames have died down!";
        oPlayer.alarm[0] = room_speed * 3; // Set the alarm to clear the message after 2 seconds
        show_debug_message("Message set: " + oPlayer.message);
    }
}

// Check if the phoenix has reached the end of the path
if (path_position == 1) {
    // Destroy the phoenix without dropping the pickaxe
    instance_destroy();
    show_debug_message("Phoenix reached the end of the path and was destroyed.");
}
