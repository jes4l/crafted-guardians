
// Check distance to player
var _dist = distance_to_object(oPlayer);

// In range?
if (_dist < other.breakDistance) {
    // Check if player has enough keys in inventory
    if (global.inventory[# 1, 0] >= cost_key) {
        // Deduct the cost and destroy the instance
        global.inventory[# 1, 0] -= cost_key;
		global.level++;
        instance_destroy();
    }
}
