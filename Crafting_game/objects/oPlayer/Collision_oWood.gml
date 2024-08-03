instance_destroy(other);
var itemType = "Wood";
var cellIndex = 0; // Cell 1

// Increment the quantity in the inventory cell
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
