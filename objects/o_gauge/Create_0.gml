/// @description Set mouse follow to false, basic minigame data
// W tym edytorze możesz zapisać swój kod

randomise();

global.last_pt = 0.0;

dir = 0;

global.gauge_focus = false;

global.gauge_set = false;

global.gauge_scales = [
	236.79,
	230.76,
	209.15,
	172.87,
	138.24,
	126.18,
	112.11
];

image_align = global.gauge_scales[6];

var scale_sprites = [
	layer_get_id("skala1"),
	layer_get_id("skala2"),
	layer_get_id("skala3"),
	layer_get_id("skala4"),
	layer_get_id("skala5"),
	layer_get_id("skala6"),
	layer_get_id("skala7"),
];

global.drawn_num = floor(random_range(0,6));

layer_set_visible(scale_sprites[global.drawn_num], true);

do{
	var set_gauge_to = floor(random_range(0,6));
	image_align = global.gauge_scales[set_gauge_to];
} until (image_align == global.gauge_scales[global.drawn_num]);

global.rick = audio_play_sound(
	asset_get_index("snd_rick"),
	10,
	false
);

audio_sound_gain(global.rick, (image_angle - 102.9) / 147.73, 1);

global.self_turn = time_source_create(time_source_game, 1, time_source_units_seconds, function(){
	if(dir == 0){
		if(image_angle + 6.0 < 251.72) image_angle += 6.0;
		else{ 
			image_angle += (251.72-image_angle);
			dir++;
		}
	} else {
		if(image_angle - 6.0 > 102.9) image_angle -= 6.0;
		else{
			image_angle -= (image_angle-102.9);
			dir--;
		}
	}
	
	if (
	image_angle == global.gauge_scales[global.drawn_num] || 
	(image_angle <= global.gauge_scales[global.drawn_num] + 2.5 && image_angle >= global.gauge_scales[global.drawn_num]) ||
	(image_angle >= global.gauge_scales[global.drawn_num] - 2.5 && image_angle <= global.gauge_scales[global.drawn_num])
){  
	global.gauge_set = true;
}
else {
	global.gauge_set = false;
}

if(global.gauge_set == true){
		self.sprite_index = asset_get_index("spr_gauge_set");
} else {
		self.sprite_index = asset_get_index("spr_gauge");
}
	
}, [], -1);

time_source_start(global.self_turn);

