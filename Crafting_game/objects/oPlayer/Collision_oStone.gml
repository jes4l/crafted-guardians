// Collision event for Stone
instance_destroy(other);
itemType = "Stone";
cellIndex = 2; // Cell 3
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));