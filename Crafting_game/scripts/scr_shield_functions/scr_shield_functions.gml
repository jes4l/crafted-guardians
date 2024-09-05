function scr_shield_functions() {

function activateShield() {
    if (!global.shieldActive) {
        global.shieldActive = true;
        var radius = 50; // Adjust this value as needed
        var shieldWidth = sprite_get_width(sShield);
        var shieldHeight = sprite_get_height(sShield);
        var quarterCircumference = 2 * pi * radius * (90 / 360);
        var numShields = ceil(quarterCircumference / (shieldWidth * 0.8));
        var effectiveRadius = radius + (max(shieldWidth, shieldHeight) / 2);

        for (var i = 0; i < numShields; i++) {
            var angle = i * (90 / (numShields - 1));
            var radian = degtorad(angle);
            var shieldX = x + effectiveRadius * cos(radian);
            var shieldY = y + effectiveRadius * sin(radian);
            var shield = instance_create_layer(shieldX, shieldY, "Instances", oShield);
            shield.angle = angle;
            shield.radius = effectiveRadius;
            shield.image_angle = 0;
            shield.sprite_index = sShield;
        }
    }
}

function deactivateShield() {
    if (global.shieldActive) {
        global.shieldActive = false;
        with (oShield) {
            instance_destroy();
        }
    }
}

}
