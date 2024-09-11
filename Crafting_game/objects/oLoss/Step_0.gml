// oCastle object step event
if (global.life <= 0) {

    timer += 1;
    if (timer >= 1 * room_speed) { // If 1 seconds have passed
        
        // Calculate total inventory and add to global.coins
        var total_inventory = 0;
        global.coins_before_conversion = global.coins; // Store coins before conversion
        for (var i = 0; i < 9; i++) {
            total_inventory += global.inventory[# i, 0];
            show_debug_message("Inventory cell " + string(i) + ": " + string(global.inventory[# i, 0]));
            global.inventory[# i, 0] = 0; // Set inventory to 0
        }
        show_debug_message("Total inventory: " + string(total_inventory));
        global.coins += total_inventory * 5;
        show_debug_message("Global coins after conversion: " + string(global.coins));
        
        room_goto(rmEnd);
        instance_destroy();
    }
} else {
    timer = 0; // Reset the timer if hp is not 0
}
