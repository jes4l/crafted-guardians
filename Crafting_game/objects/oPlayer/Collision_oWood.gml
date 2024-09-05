// Collision event for Wood
instance_destroy(other);
itemType = "Wood";
cellIndex = 1; // Cell 2
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));