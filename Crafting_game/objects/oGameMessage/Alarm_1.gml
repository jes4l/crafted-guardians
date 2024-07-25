// Alarm[1] event
global.countdown -= 1;

if (global.countdown >= 0) {
    alarm[1] = room_speed; // Continue the countdown every second
} else {
    timer_visible = false; // Hide the timer when countdown reaches zero
}
