/// @description Randomize coffee sprite
// You can write your code in this editor

audio_play_sound(asset_get_index("snd_vendingMachineHum"), -1, 100); 

coffee_idx = irandom(2);
sprite_index = asset_get_index("spr_coffee" + string(coffee_idx));


