/// @description Insert description here
// You can write your code in this editor

if(global.mistakes < 3) {
	audio_play_sound(asset_get_index("snd_boom"), 0, 0);
} else {
	audio_play_sound(asset_get_index("snd_sadTrumpet"), 0, 0);	
}