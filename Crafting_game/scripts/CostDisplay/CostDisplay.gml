function CostDisplay() {
    var tower = instance_position(mouse_x, mouse_y, oTower1C);
    
    if (tower != noone) {
        var tower_center_x = tower.x;
        var tower_top_y = tower.y - tower.sprite_height / 2; // Get the top of the tower
        
        var cost_wood = string(tower.cost_wood);
        var cost_stone = string(tower.cost_stone);

        var text_wood_width = string_width(cost_wood);
        var text_stone_width = string_width(cost_stone);
        var sprite_wood_width = sprite_get_width(sWood);
        var sprite_stone_width = sprite_get_width(sStone);
        var sprite_wood_height = sprite_get_height(sWood);
        var sprite_stone_height = sprite_get_height(sStone);

        // Calculate total width for proper alignment
        var total_width = text_wood_width + sprite_wood_width + 10 + text_stone_width + sprite_stone_width + 10; // Add spacing

        // Define an offset value
        var offset_horizontal = 7; // Example offset value; adjust as needed
		var offset_vertical = 5;
        // Calculate starting position (centered horizontally over the tower with offset)
        var draw_x = tower_center_x - total_width / 2 + offset_horizontal;
        var draw_y = tower_top_y - max(sprite_wood_height, sprite_stone_height) - 5 + offset_vertical; // Adjust to be above the top of the tower

        // Draw wood cost and sprite
        draw_set_color(c_black);
        draw_text(draw_x, draw_y + (sprite_wood_height - string_height(cost_wood)) / 2, cost_wood);
        draw_sprite(sWood, 0, draw_x + text_wood_width + 5, draw_y + (sprite_wood_height / 2));

        // Calculate position for stone cost and sprite
        var stone_x = draw_x + text_wood_width + sprite_wood_width + 10;
        draw_text(stone_x, draw_y + (sprite_stone_height - string_height(cost_stone)) / 2, cost_stone);
        draw_sprite(sStone, 0, stone_x + text_stone_width + 5, draw_y + (sprite_stone_height / 2));

        draw_set_color(c_white);
    }
}
