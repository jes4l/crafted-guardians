/// @description Insert description here
// You can write your code in this editor

if(!visible) return 0;

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
	sprite_index = sPlayer_move;
	
	// Flip sprite
	// if (moveX != 0) image_xscale = -sign(moveX); // Multiply by -1 to flip directions
}

// Animation Idle
else {
	sprite_index = sPlayer_idle;
}

// Direction
var _signMouse = sign(mouse_x - x);

if (_signMouse != 0) {
	image_xscale = _signMouse;
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
        if (global.coins >= 150) { // Check if global.coins is greater than or equal to 100
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
        }
    }
}


			


