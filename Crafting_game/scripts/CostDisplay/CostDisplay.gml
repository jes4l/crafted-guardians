function CostDisplay()
{
    var tower = instance_position(mouse_x, mouse_y, oTower1C);
    
    if (tower != noone)
    {
        var tower_center_x = tower.x;
        var tower_center_y = tower.y;

        var cost_text = string(tower.cost_wood) + " wood, " + string(tower.cost_stone) + " stone";

        var text_width = string_width(cost_text);
        var text_height = string_height(cost_text);

        var text_x = tower_center_x - text_width / 2;
        var text_y = tower_center_y - text_height / 2 - 20;

        draw_set_color(c_black);
        draw_text(text_x, text_y, cost_text);
        draw_set_color(c_white);
    }
}
