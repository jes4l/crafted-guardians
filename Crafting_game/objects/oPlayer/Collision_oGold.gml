instance_destroy(other);
var itemType = "Gold";
var cellIndex = 3; // Cell 4

// Increment the quantity in the inventory cell
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
