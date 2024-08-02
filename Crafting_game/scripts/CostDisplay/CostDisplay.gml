// CostDisplay Function
function CostDisplay(cost_wood, cost_stone, cost_key, cost_brick, cost_gold, sprite) {
    if (mouse_x > x - sprite_width / 2 && mouse_x < x + sprite_width / 2 &&
        mouse_y > y - sprite_height / 2 && mouse_y < y + sprite_height / 2) {
        
        var y_offset = y - sprite_height / 2;
        var x_offset = x + sprite_width / 2 + 10; // Adjust the x_offset to the right-hand side
        var text_y_offset = -11; // Adjust this value to bring the text higher up
        var text_x_offset = + 10; // Adjust this value to bring the text closer to the sprite
        
        // Display the costs with corresponding item sprites on the right-hand side of the object
        if (cost_wood > 0) {
            draw_sprite(sWood, 0, x_offset, y_offset);
            draw_text(x_offset + text_x_offset, y_offset + text_y_offset, string(cost_wood));
            y_offset += 20;
        }
        if (cost_stone > 0) {
            draw_sprite(sStone, 0, x_offset, y_offset);
            draw_text(x_offset + text_x_offset, y_offset + text_y_offset, string(cost_stone));
            y_offset += 20;
        }
        if (cost_key > 0) {
            draw_sprite(sKey, 0, x_offset, y_offset);
            draw_text(x_offset + text_x_offset, y_offset + text_y_offset, string(cost_key));
            y_offset += 20;
        }
        if (cost_brick > 0) {
            draw_sprite(sBrick, 0, x_offset, y_offset);
            draw_text(x_offset + text_x_offset, y_offset + text_y_offset, string(cost_brick));
            y_offset += 20;
        }
        if (cost_gold > 0) {
            draw_sprite(sGold, 0, x_offset, y_offset);
            draw_text(x_offset + text_x_offset, y_offset + text_y_offset, string(cost_gold));
            y_offset += 20;
        }
    }
}
