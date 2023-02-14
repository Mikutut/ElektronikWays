// @description Rotate accordingly to mouse position
// W tym edytorze możesz zapisać swój kod

//normalize
var pt = point_direction(self.x, self.y, mouse_x, mouse_y) - start_angle;

show_debug_message(pt)

if(global.gauge_focus){
	if(global.last_pt == pt) {
		return;
	}
	//else if(pt <= (251.72 - start_angle) && pt >= (102.9 - start_angle)){ 
	else{
		image_angle = pt;
		global.last_pt = pt;
	}
	//else return;
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

audio_sound_gain(global.rick, (image_angle - 102.9) / 147.73, 1);

if(global.gauge_set == true){
		self.sprite_index = asset_get_index("spr_gauge_set");
} else {
		self.sprite_index = asset_get_index("spr_gauge");
}




