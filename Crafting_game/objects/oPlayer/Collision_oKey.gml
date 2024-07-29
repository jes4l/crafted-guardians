/// @description Insert description here
// You can write your code in this editor
// OIRON COLLISION EVENT
instance_destroy(other);
var itemType = "Iron"; // Change this based on the item type
var cellIndex = 1; // Cell 2 (adjust as needed)

// Increment the quantity in the inventory cell
global.inventory[# cellIndex, 0] += 1;
show_debug_message("Inventory " + itemType + ": " + string(global.inventory[# cellIndex, 0]));
