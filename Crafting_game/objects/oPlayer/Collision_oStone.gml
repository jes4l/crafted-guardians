instance_destroy(other);
var itemType = "Stone";
var cellIndex = 4; // Cell 5

// Increment the quantity in the inventory cell
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
