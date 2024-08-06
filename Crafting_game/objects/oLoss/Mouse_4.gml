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
    } else {
        // Set error message on oPlayer
        oPlayer.message = "Not enough Keys to Unlock Gate";
        oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
        show_debug_message("Message set: " + oPlayer.message);
    }
} else {
    // Set error message on oPlayer
    oPlayer.message = "Come Closer to Unlock";
    oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
    show_debug_message("Message set: " + oPlayer.message);
}
