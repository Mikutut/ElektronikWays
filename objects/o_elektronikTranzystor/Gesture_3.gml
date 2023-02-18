/// @description Drag arm, if current drag is shorter than .5s
// You can write your code in this editor

window_set_cursor(cr_drag);
drag_elapsed = current_time - drag_time;
if(drag_elapsed < (1000 / global.multiplier)){
	x = x <= 0 ? 0 : x - 12;
}