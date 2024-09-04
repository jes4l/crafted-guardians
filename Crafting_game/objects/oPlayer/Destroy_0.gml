if (instance_exists(heldItem))
instance_destroy(heldItem);


// Clean up the global list
ds_list_destroy(global.shieldAngles);
