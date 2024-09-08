// properties
moveSpeed = 1;

global.hp_jesal = 50;
hp = global.hp_jesal;
max_hp = global.hp_jesal;

// variables
moveX = 0;
moveY = 0;

// Create Pickaxe
heldItem = instance_create_layer(x, y, "Instances", oPickaxe);
// pickaxe flipper
global.flipEnabled = true; // Set to true to enable flipping by default

// Inventory
// Initialize startX and startY for inventory drawing
// Initialize cellWidth and cellHeight for inventory drawing
cellWidth = 36;
cellHeight = 50;

// Initialize startX and startY for inventory drawing
startX = 10;
startY = display_get_gui_height() - cellHeight - 10 + 20;
global.inventory = ds_grid_create(9, 1); // 9 cells (slots) in the inventory

show_debug_message("Player Created: " + string(global.playerGender));


//message
message = "";
alarm[0] = -1; // Initialize the alarm


//Test case
global.inventory[# 0, 0] += 99;
global.inventory[# 1, 0] += 99;
global.inventory[# 2, 0] += 99;
global.inventory[# 3, 0] += 99;
global.inventory[# 4, 0] += 99;
global.inventory[# 5, 0] += 99;
global.inventory[# 6, 0] += 99;
global.inventory[# 7, 0] += 99;
global.inventory[# 8, 0] += 99;
//coins are in oSpawn 


// Initialize shield state
global.shieldActive = false;

// Include the shield functions script
scr_shield_functions();


// Spikes
in_contact_with_spikes_lava = false;


// health:
if (!variable_global_exists("global.purchaseCount")) {
    global.purchaseCount = 0;
}

if (!variable_global_exists("global.purchaseCountLife")) {
    global.purchaseCountLife = 0;
}
