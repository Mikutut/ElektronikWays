/// @description Insert description here
// You can write your code in this editor

global.mg5_cableHeld = "none";

if(global.mg5_blueConnected == false) {
	audio_play_sound(asset_get_index("snd_electricity"), 0, 0);
	global.mg5_blueConnected = true;
}