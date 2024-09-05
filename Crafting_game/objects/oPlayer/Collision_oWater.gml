// Collision event for Water
instance_destroy(other);
itemType = "Water";
cellIndex = 5; // Cell 6
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));