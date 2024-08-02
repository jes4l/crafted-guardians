/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oTower1D) /*|| instance_exists(oTower2D) || instance_exists(oTower3D*/){
    // A tower is yet to be placed
} else {
    if(global.inventory[# 0, 0] >= cost_wood && global.inventory[# 4, 0] >= cost_stone){
        instance_create_depth(mouse_x, mouse_y, -9, oTower1D);
        global.inventory[# 0, 0] -= cost_wood; // Deduct wood
    }
}
