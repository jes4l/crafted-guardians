rotations = lerp(rotations, 45, 0.1);
image_angle = rotations * oPlayer.image_xscale;

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
            // Check if the breakable object is oCastle
            if (object_index == oCastle) {
                show_debug_message("oCastle cannot be broken by oPickaxe.");
                return; // Exit if the object is oCastle
            }
            
            // set selected
            other.selectorInst = id;
            
            // click
            if (other.cooldown == 0 && _mousePress) {
                // reduce hp
                hp--;
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
