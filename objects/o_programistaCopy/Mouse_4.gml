/// @description Insert description here
// You can write your code in this editor

if(global.mg3_gameState == 1) {
	global.mg3_gameState = 2;
	
	max_x = display_width;
	max_y = display_height;
	
	show_debug_message(max_x);
	
	btn_x = irandom_range(700, max_x - 700);
	btn_y = irandom_range(200, max_y - 200);
	
	instance_create_layer(btn_x, btn_y, "Instances", o_programistaPaste);
	instance_deactivate_object(o_programistaCopy);
}