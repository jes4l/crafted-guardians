/// @description Insert description here
// You can write your code in this editor
if(global.inventory[# 1, 0] >= cost_key){
        global.inventory[# 1, 0] -= cost_key;
		instance_destroy();
    }