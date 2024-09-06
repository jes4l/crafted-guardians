x = mouse_x;
y = mouse_y;

if (place_meeting(x, y, oReg) || place_meeting(x, y, oBigStone) || place_meeting(x, y, oBush) || place_meeting(x, y, oCactusPlant) || place_meeting(x, y, oCloud) || place_meeting(x, y, oStoneSlab) || place_meeting(x, y, oTitaniumRaw) || place_meeting(x, y, oTitaniumRawSmall) || place_meeting(x, y, oTree) || place_meeting(x, y, oKey) || place_meeting(x, y, oLightning) || place_meeting(x, y, oStone) || place_meeting(x, y, oTitanium) || place_meeting(x, y, oWater) || place_meeting(x, y, oWood) || place_meeting(x, y, oDest) || place_meeting(x, y, oPad) || place_meeting(x, y, oTowerParent) || place_meeting(x, y, oTree) || place_meeting(x, y, oBush)) {
    col = c_red;
} else {
    col = c_white;
}


