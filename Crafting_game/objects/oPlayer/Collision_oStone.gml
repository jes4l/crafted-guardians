// OSTONE COLLISION EVENT
instance_destroy(other);
var itemType = "Stone"; // Change this based on the item type
var cellIndex = 4; // Cell 5 (adjust as needed)

// Increment the quantity in the inventory cell
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
