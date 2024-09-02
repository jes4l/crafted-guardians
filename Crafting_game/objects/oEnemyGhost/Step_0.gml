if (hp <= 0) {
    instance_destroy();
    var sShopMetalInstance = instance_find(sShopMetal, 0); // Find the instance of sShopMetal
    if (sShopMetalInstance != noone) { // Check if the instance exists
        sShopMetalInstance.image_index = 1; // Set the image_index to 1
    
		instance_create_layer(208, 598, "Instances", oPickaxe2); // Create an instance of oPickaxe2 at (208, 598)
    
		// Send a message to the player
		oPlayer.message = "Come Closer to Unlock";
		oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
		show_debug_message("Message set: " + oPlayer.message);
	}
}
