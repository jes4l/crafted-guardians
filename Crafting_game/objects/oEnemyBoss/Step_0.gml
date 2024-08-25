if (hp <= 0) {
    instance_destroy();
    instance_create_layer(x, y, "Instances", oKey);
    // Set message on oPlayer
    oPlayer.message = "Use key to unlock gate";
    oPlayer.alarm[0] = room_speed * 2; // Set the alarm to clear the message after 2 seconds
    show_debug_message("Message set: " + oPlayer.message);
}

//spikes
if (!place_meeting(x, y, oSpikes)) {
    in_contact_with_spikes = false;
}
