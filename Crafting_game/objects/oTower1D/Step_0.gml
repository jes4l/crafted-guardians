/// @description Insert description here
// You can write your code in this editor

x = mouse_x;
y = mouse_y;

if (place_meeting(x, y, oReg) || place_meeting(x, y, oTowerParent) || place_meeting(x, y, oShop) || place_meeting(x, y, oTree) || place_meeting(x, y, oBush)) {
    col = c_red;
} else {
    col = c_white;
}
