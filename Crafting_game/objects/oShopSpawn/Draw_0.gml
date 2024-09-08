// Draw Event

// Helper function to create and draw instances
function create_and_draw_instance(object, x, y, xscale, yscale, angle) {
    var instance = instance_find(object, 0); // Find the first instance of the object
    if (instance == noone) {
        instance = instance_create_layer(x, y, "Instances", object);
        instance.visible = false; // Prevent automatic drawing
    }
    if (instance != noone) {
        instance.x = x; // Set custom position
        instance.y = y; // Set custom position
        instance.image_xscale = xscale; // Set custom scale
        instance.image_yscale = yscale; // Set custom scale
        instance.image_angle = angle; // Set rotation if needed

        // Manually draw the instance using its own draw method
        with (instance) {
            draw_self();
        }
    }
}

// Create and draw instances
create_and_draw_instance(oShop, 869, 92, 2.628572, 2.571429, 0);
create_and_draw_instance(oShopStone, 295.5, 18.5, 3.428571, 3.107143, 0);
create_and_draw_instance(oShopMetal, 104, 548, 2.9, 2.928571, 0);
create_and_draw_instance(oShopElectricity, 836.7999, 499.5, 2.462861, 2.464286, 0);
create_and_draw_instance(oShopWater, 944, 924.5, 2.666667,  2.508858, 0);
create_and_draw_instance(oShopCastle, 134, 924, 2.371428,  2.5, 0);