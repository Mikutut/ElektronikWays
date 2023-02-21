/// @description Insert description here
// You can write your code in this editor

if(global.mg5_blueConnected == false && (
	global.mg5_cableHeld == "none" || global.mg5_cableHeld == "blue"
)) {
	global.mg5_cableHeld = "blue"
	if(x < 940 || mouse_x < 940)
		x = mouse_x;
	y = mouse_y;
} else return;