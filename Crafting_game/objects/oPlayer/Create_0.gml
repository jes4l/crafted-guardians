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




























// Define the radius of the force field
var radius = 50; // Adjust this value as needed

// Get the dimensions of the shield sprite
var shieldWidth = sprite_get_width(sShield);
var shieldHeight = sprite_get_height(sShield);

// Calculate the number of shields needed
var quarterCircumference = 2 * pi * radius * (90 / 360); // Calculate circumference for 90 degrees
var numShields = ceil(quarterCircumference / (shieldWidth * 0.8)); // Slightly increase the density (0.8 factor)

// Adjust the effective radius to ensure shields form a proper arc
var effectiveRadius = radius + (max(shieldWidth, shieldHeight) / 2); 

// Create shield instances around oPlayer in a quarter circle
for (var i = 0; i < numShields; i++) {
    var angle = i * (90 / (numShields - 1)); // 90 degrees for a quarter circle
    var radian = degtorad(angle);
    var shieldX = x + effectiveRadius * cos(radian);
    var shieldY = y + effectiveRadius * sin(radian);
    var shield = instance_create_layer(shieldX, shieldY, "Instances", oShield);
    
    // Store the angle and radius for later use in the shield
    shield.angle = angle;
    shield.radius = effectiveRadius;
    
    // Keep the shield's orientation consistent without rotating it
    shield.image_angle = 0; // Ensure no rotation applied to the sprite
    
    // Set the shield sprite
    shield.sprite_index = sShield;
}
