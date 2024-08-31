if (place_meeting(mouse_x, mouse_y, oReg)) {
    instance_destroy();
    instance_create_depth(mouse_x, mouse_y, -1, oBomb1);
}
