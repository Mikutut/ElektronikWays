/// @description Insert description here
// You can write your code in this editor

if(global.mg5_blackConnected == false) {
	audio_play_sound(asset_get_index("snd_electricity"), 0, 0);
	global.mg5_blackConnected = true;	
}