// Collision event for Key
instance_destroy(other);
var itemType = "Key";
var cellIndex = 0; // Cell 1
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
global.coins += 10;