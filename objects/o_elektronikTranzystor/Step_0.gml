/// @description Move object towards power outlet
// You can write your code in this editor

if (mouse_check_button(mb_left)) {
	x = mouse_x;
	y = mouse_y;
} else {
	if(outlet_inst != noone) {
		move_towards_point(outlet_inst.x, outlet_inst.y, 5);	
	} else {
		move_towards_point(o_elektronikGniazdko.x, o_elektronikGniazdko.y, 5);	
	}
}