//draw event:
// Set up margin and starting position
var margin = 16;
var box_width = 500; // Increased width of the leaderboard box
var box_height = 400; // Height of the leaderboard box
var box_x = room_width - box_width - margin; // X position of the box
var box_y = (room_height - box_height) / 2; // Y position of the box to center it vertically

// Draw the leaderboard box
draw_set_color(c_black);
draw_set_font(fntG);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);
draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, true);

// Calculate the maximum width required for the name, lvl, and coins columns
var max_name_width = string_width("Name");
var max_lvl_width = string_width("Level");
var max_coins_width = string_width("Coins");

if data != -1 {
    for (var i = 0; i < array_length(data); i++) {
        var _doc = data[i];
        var name_width = string_width(_doc.name);
        var lvl_width = string_width(_doc.lvl);
        var coins_width = string_width(string(_doc.coins));
        
        if (name_width > max_name_width) {
            max_name_width = name_width;
        }
        
        if (lvl_width > max_lvl_width) {
            max_lvl_width = lvl_width;
        }
        
        if (coins_width > max_coins_width) {
            max_coins_width = coins_width;
        }
    }
}

// Scaling factor for the text
var scale_factor = 0.75;

// Draw the leaderboard title
draw_text_transformed(box_x + margin, box_y + margin, "Leaderboard:", scale_factor, scale_factor, 0);

// Draw the table header (Name | Level | Coins)
var header_y = box_y + margin + 32; // Increased gap between title and header
draw_text_transformed(box_x + margin, header_y, "Name", scale_factor, scale_factor, 0);
draw_text_transformed(box_x + margin + max_name_width + margin, header_y, "Level", scale_factor, scale_factor, 0);
draw_text_transformed(box_x + margin + max_name_width + max_lvl_width + 2 * margin, header_y, "Coins", scale_factor, scale_factor, 0);

// Draw the table rows
if data != -1 {
    for (var i = 0; i < array_length(data) && i < 10; i++) { // Limit to 10 entries
        var _doc = data[i];
        
        // Calculate the Y position for the current row
        var row_y = header_y + 32 + (24 * i); // Increased space between rows

        // Check if the row is within the bounds of the box
        if (row_y + 16 < box_y + box_height) {
            // Draw the name, level, and coins cells
            draw_text_transformed(box_x + margin, row_y, _doc.name, scale_factor, scale_factor, 0);
            draw_text_transformed(box_x + margin + max_name_width + margin, row_y, _doc.lvl, scale_factor, scale_factor, 0);
            draw_text_transformed(box_x + margin + max_name_width + max_lvl_width + 2 * margin, row_y, string(_doc.coins), scale_factor, scale_factor, 0);
        } else {
            // Stop drawing if the row goes outside the box
            break;
        }
    }
} else {
    // If data is still loading, show a loading message
    draw_text_transformed(box_x + margin, header_y + 32, "Loading...", scale_factor, scale_factor, 0);
}