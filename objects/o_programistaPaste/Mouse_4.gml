/// @description Insert description here
// You can write your code in this editor

if(global.mg3_gameState == 2) {
	audio_play_sound(snd_mouseClick,10,false);
	finishMinigame(true);
	instance_deactivate_object(o_programistaPaste);
}