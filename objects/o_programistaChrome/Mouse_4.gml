/// @description Insert description here
// You can write your code in this editor

//show_message(global.mg3_gameState);
if(global.mg3_gameState == 0) {
	audio_play_sound(snd_mouseClick,10,false);
	global.mg3_gameState = 1;
	
	max_x = display_width;
	max_y = display_height;
	
	btn_x = irandom_range(100, max_x - 100);
	btn_y = irandom_range(0, max_y - 100);
	
	instance_create_layer(btn_x, btn_y, "Instances", o_programistaCopy);
}