//draw event:
// Set up margin and starting position
var margin = 16;
var box_width = 200; // Width of the leaderboard box
var box_height = 200; // Height of the leaderboard box
var box_x = room_width - box_width - margin; // X position of the box
var box_y = (room_height - box_height) / 2; // Y position of the box to center it vertically

// Draw the leaderboard box
draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, false);
draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_width, box_y + box_height, true);

// Set fixed width for 10-character name
var column_name_width = string_width("X") * 6; // Further reduced width for the name column
var column_score_width = string_width("Score") * 0.6; // Further reduced width for the score column

// Scaling factor for the text
var scale_factor = 0.75;

// Draw the leaderboard title
draw_text_transformed(box_x + margin, box_y + margin, "Leaderboard:", scale_factor, scale_factor, 0);

// Draw the table header (Name | Score)
draw_text_transformed(box_x + margin, box_y + margin + 16, "Name" + string_pad("", column_name_width - string_width("Name")) + " | Score", scale_factor, scale_factor, 0);

// Iterate through the high scores
if data != -1 {
    for (var i = 0; i < array_length(data); i++) {
        var _doc = data[i];
        
        // Ensure the name fits within 6 characters
        var display_name = string_copy(_doc.name, 1, 6);

        // Pad the name to align with the score column
        display_name += string_pad("", column_name_width - string_width(display_name));

        // Format the score with proper spacing
        var display_score = string(_doc.score);
        display_score += string_pad("", column_score_width - string_width(display_score));

        // Calculate the Y position for the current row
        var row_y = box_y + margin + 32 + (16 * i);

        // Check if the row is within the bounds of the box
        if (row_y + 16 < box_y + box_height) {
            // Draw the row: "Name | Score"
            draw_text_transformed(box_x + margin, row_y, display_name + " | " + display_score, scale_factor, scale_factor, 0);
        } else {
            // Stop drawing if the row goes outside the box
            break;
        }
    }
} else {
    // If data is still loading, show a loading message
    draw_text_transformed(box_x + margin, box_y + margin + 32, "Loading...", scale_factor, scale_factor, 0);
}
