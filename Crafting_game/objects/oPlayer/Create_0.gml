/// @description Insert description here
// You can write your code in this editor

// properties
moveSpeed = 1;

// variables
moveX = 0;
moveY = 0;

// Create Pickaxe
heldItem = instance_create_layer(x, y, "Instances", oPickaxe);

/// @description Initialize inventory grid

// In your Create Event
global.inventory = ds_grid_create(5, 1); // 5 cells (slots) in the inventory








