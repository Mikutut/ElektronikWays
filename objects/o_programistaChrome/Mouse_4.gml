/// @description Insert description here
// You can write your code in this editor

//show_message(global.mg3_gameState);
if(global.mg3_gameState == 0) {
	audio_play_sound(snd_mouseClick,10,false);
	global.mg3_gameState = 1;
	
	max_x = display_width;
	max_y = display_height;
	
	btn_x = irandom_range(700, max_x - 700);
	btn_y = irandom_range(200, max_y - 200);
	
	instance_create_layer(btn_x, btn_y, "Instances", o_programistaCopy);
}