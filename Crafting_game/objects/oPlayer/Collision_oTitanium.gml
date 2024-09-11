// Collision event for Titanium
instance_destroy(other);
itemType = "Titanium";
cellIndex = 3; // Cell 4
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
global.coins += 5;