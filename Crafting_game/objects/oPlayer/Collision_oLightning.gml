// Collision event for Lightning
instance_destroy(other);
itemType = "Ligtning";
cellIndex = 4; // Cell 5
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
global.coins += 5;