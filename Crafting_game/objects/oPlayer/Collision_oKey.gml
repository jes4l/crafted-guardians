
instance_destroy(other);
var itemType = "Iron";
var cellIndex = 1; // Cell 2

// Increment the quantity in the inventory cell
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
