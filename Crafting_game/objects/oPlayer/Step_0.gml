if (hp <= 0) {
	room_goto(rmEnd);
	instance_destroy();
}

// spikes
if (!place_meeting(x, y, oReglava)) {
    in_contact_with_spikes_lava = false;
}

if(!visible) return 0;

// Male or Female
var moveSprite, idleSprite;

if (global.playerGender == "male") {
    moveSprite = sPlayer_move;
    idleSprite = sPlayer_idle;
} else {
    moveSprite = sPlayerFemale_move;
    idleSprite = sPlayerFemale_idle;
}


// Get input buttons
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

// Input Axis
var _inputX = _right - _left;
var _inputY = _down - _up;

// Get movement speed
moveX = _inputX * moveSpeed;
moveY = _inputY * moveSpeed;

// Collisions
if (CollisionScript(x + moveX, y)) {
	while (!CollisionScript(x + sign(moveX), y)){
		x += sign(moveX);
	}
	
	moveX = 0;
}

if (CollisionScript(x, y + moveY)) {
	while (!CollisionScript(x, y + sign(moveY))){
		y += sign(moveY);
	}
	
	moveY = 0;
}

if (LossTile(x + moveX, y)) {
	while (!LossTile(x + sign(moveX), y)){
		x += sign(moveX);
	}
	
	moveX = 0;
}

if (LossTile(x, y + moveY)) {
	while (!LossTile(x, y + sign(moveY))){
		y += sign(moveY);
	}
	
	moveY = 0;
}


// Move instance
x += moveX;
y += moveY;

// Animate Player
if (moveX != 0 or moveY != 0) {
	sprite_index = moveSprite;
	
	// Flip sprite
	// if (moveX != 0) image_xscale = -sign(moveX); // Multiply by -1 to flip directions
}

// Animation Idle
else {
	sprite_index = idleSprite;
}

// Direction
var _signMouse = sign(mouse_x - x);

if (global.flipEnabled) {

    if (_signMouse != 0) {
        image_xscale = _signMouse;
    }
}

// Animation Speed
if (moveX != 0 && sign(moveX) != _signMouse) {
	image_speed = -1;
}
else {
	image_speed = 1;
}

//portal stuff
var pad, dest;
pad = instance_place(x, y, oPad);

if (place_meeting(x, y, pad)) {
    if (keyboard_check_pressed(vk_up) or keyboard_check(ord("W"))) {
        if (global.coins >= 150) { // Check if global.coins is greater than or equal to 150
            global.coins -= 150;
            for (i = 0; i < instance_number(oDest); i++) {
                dest = instance_find(oDest, i);

                if (pad.index == dest.index) {
                    effect = instance_create_depth(x, y, -1, oEffect);
                    effect.target = dest;
                    visible = false;
                    break;
                }
            }
        } else {
            // Set error message on oPlayer
            oPlayer.message = "Not enough money to travel";
            oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
            show_debug_message("Message set: " + oPlayer.message);
        }
    }
}


			
// Mouse Click Event
if (mouse_check_button_pressed(mb_left)) {
    var mouseX = device_mouse_x_to_gui(0);
    var mouseY = device_mouse_y_to_gui(0);

    for (var i = 0; i < 9; i++) {
        var box_x1 = startX + i * cellWidth;
        var box_y1 = startY + 4;
        var box_x2 = startX + (i + 1) * cellWidth;
        var box_y2 = startY + cellHeight - 12 - 4;

        if (mouseX > box_x1 && mouseX < box_x2 && mouseY > box_y1 && mouseY < box_y2) {
            if (i == 6) { // Check if the clicked slot is the spikes slot
                if (global.inventory[# 6, 0] > 0) { // Check if the quantity is greater than 0
                    instance_create_depth(mouse_x, mouse_y, -9, oSpikes1D);
					audio_play_sound(snd_finance, 1, false);
                    global.inventory[# 6, 0] -= 1; // Decrement the quantity
                } else {
                    // Set error message on oPlayer
                    oPlayer.message = "Not enough Spikes in Inventory";
                    oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
                    show_debug_message("Message set: " + oPlayer.message);
                }
            } else if (i == 7) { // Check if the clicked slot is the bomb slot
                if (global.inventory[# 7, 0] > 0) { // Check if the quantity is greater than 0
                    instance_create_depth(mouse_x, mouse_y, -9, oBomb1D);
					audio_play_sound(snd_finance, 1, false);
                    global.inventory[# 7, 0] -= 1; // Decrement the quantity
                } else {
                    // Set error message on oPlayer
                    oPlayer.message = "Not enough Bombs in Inventory";
                    oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
                    show_debug_message("Message set: " + oPlayer.message);
                }
            } else if (i == 8) { // Check if the clicked slot is the EMP slot
                if (global.inventory[# 8, 0] > 0) { // Check if the quantity is greater than 0
                    instance_create_depth(mouse_x, mouse_y, -9, oEMP1D);
					audio_play_sound(snd_finance, 1, false);
                    global.inventory[# 8, 0] -= 1; // Decrement the quantity
                } else {
                    // Set error message on oPlayer
                    oPlayer.message = "Not enough EMPs in Inventory";
                    oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
                    show_debug_message("Message set: " + oPlayer.message);
                }
            }
        }
    }
}






/*

if (keyboard_check_pressed(vk_space)) {
    if (global.shieldActive) {
        deactivateShield();
    } else {
        activateShield();
    }
}
*/