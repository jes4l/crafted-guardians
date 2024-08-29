instance_destroy(other);
var itemType = "Lightning";
var cellIndex = 5; // Cell 6

// Increment the quantity in the inventory cell
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
