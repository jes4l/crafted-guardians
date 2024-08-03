instance_destroy(other);
var itemType = "Brick";
var cellIndex = 2; // Cell 3

// Increment the quantity in the inventory cell
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
