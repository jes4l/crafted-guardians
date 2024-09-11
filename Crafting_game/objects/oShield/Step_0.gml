// Rotate the shield when the "I" or "J" key is pressed
if (keyboard_check(ord("Q"))) {
    shieldRotation -= 4; // Adjust the rotation speed as needed
}
if (keyboard_check(ord("R"))) {
    shieldRotation += 4; // Adjust the rotation speed as needed
}

// Keep the shield rotation within 0-360 degrees
shieldRotation = shieldRotation mod 360;

// Update the position of the shield to follow oPlayer
var radian = degtorad(angle + shieldRotation);
var newX = oPlayer.x + radius * cos(radian);
var newY = oPlayer.y + radius * sin(radian);

// Check for collision with multiple oCollisions
var collisions = 0;
var avgCollisionX = 0;
var avgCollisionY = 0;

if (place_meeting(newX, newY, oCollision)) {
    collisions += 1;
    avgCollisionX += other.x;
    avgCollisionY += other.y;
}

if (collisions > 0) {
    avgCollisionX /= collisions;
    avgCollisionY /= collisions;

    // Calculate the angle away from the average collision point
    var avoidAngle = point_direction(oPlayer.x, oPlayer.y, avgCollisionX, avgCollisionY);
    
    // Rotate away from the average collision angle
    with (oShield) {
        // Rotate by 90 degrees away from the direction of collision (adjustable)
        shieldRotation = (shieldRotation + 90 + avoidAngle) mod 360; 
    }
} else {
    // Update position if no collision
    x = newX;
    y = newY;
}

// Check HP and destroy instance if HP is 0 or less
if (global.hp_shield <= 0) {
	global.shieldActive = false;
    instance_destroy();
}
