// Check for collision with oPlayer
if (place_meeting(x, y, oPlayer)) {
    var _player = instance_place(x, y, oPlayer);
    if (_player != noone) {
        show_debug_message("Collision with oPlayer detected.");
        
        // Destroy the existing held item if it's not oPickaxe2
        if (instance_exists(_player.heldItem) && _player.heldItem != id) {
            show_debug_message("Destroying existing held item.");
            instance_destroy(_player.heldItem);
        }
        
        // Equip oPickaxe2
        _player.heldItem = id;
        show_debug_message("oPickaxe2 equipped.");
		
        
        // Set breakDistance to 32 upon collision
        breakDistance = 32;
        global.flipEnabled = true;
        global.shopMetalActive = true;
        show_debug_message("Flag toggled to: " + string(global.shopMetalActive));
    } else {
        show_debug_message("No instance of oPlayer found.");
    }
}

// Update image_angle if held by the player
if (instance_exists(oPlayer) && oPlayer.heldItem == id) {
    rotations = lerp(rotations, 45, 0.1);
    image_angle = rotations * oPlayer.image_xscale;
}

// Get input
var _mousePress = mouse_check_button(mb_left);

// Get breakable instance at mouse position
var _breakable = instance_position(mouse_x, mouse_y, oBreakableParent);

with (_breakable) {
    // Get distance
    var _dist = distance_to_object(oPlayer);
    
    // In range?
    if (_dist < other.breakDistance) {
        // Check line of sight
        if (!collision_line(oPlayer.x, oPlayer.y, x, y, oCollision, false, true)) {
            // Check if the breakable object is oCastle and if all enemies are spawned
            if (object_index == oCastle && !global.all_enemies_spawned) {
                show_debug_message("oCastle is not breakable yet.");
                return; // Exit if oCastle is not breakable yet
            }
            
            // set selected
            other.selectorInst = id;
            
            // click
            if (other.cooldown == 0 && _mousePress) {
                // reduce hp
                hp -= 7;
				audio_play_sound(snd_axe, 1, false);
                
                // Set rotation
                other.rotations = -80;
                
                // set Cool down
                other.cooldown = 20;
            }
        }
    }
}

// cooldown
if (cooldown > 0) cooldown--;
