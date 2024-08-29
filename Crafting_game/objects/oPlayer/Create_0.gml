// properties
moveSpeed = 1;

// variables
moveX = 0;
moveY = 0;

// Create Pickaxe
heldItem = instance_create_layer(x, y, "Instances", oPickaxe);

// Inventory
global.inventory = ds_grid_create(6, 1); // 5 cells (slots) in the inventory


//message
message = "";
alarm[0] = -1; // Initialize the alarm







