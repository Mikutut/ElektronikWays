/// @description Insert description here
// You can write your code in this editor

window_set_cursor(cr_drag);
if(global.mg5_blackConnected == false && (
	global.mg5_cableHeld == "black" || global.mg5_cableHeld == "none"
)) {
	global.mg5_cableHeld = "black"
	if(x < 940 || mouse_x < 940)
		x = mouse_x;
	y = mouse_y;
} else return;