// @description Rotate accordingly to mouse position
// W tym edytorze możesz zapisać swój kod

var pt = point_direction(x, y, mouse_x, mouse_y) - start_angle;

if(check_pt){
	//show_debug_message(start_angle);
	check_pt = false;
	if(pt < 0) start_angle -= 300;
	else if(pt > 250) start_angle += 300;
}
//image_angle = pt;
//normalize
//if(start_angle != 180) pt = abs(pt - start_angle);

//pt = angle_difference(pt,start_angle)
show_debug_message(pt);

if(gauge_focus){
	if(last_pt == pt) {
		return;
	}
	//else if(pt <= (251.72 - start_angle) && pt >= (102.9 - start_angle)){ 
	else{
		image_angle = pt;
		last_pt = pt;
	}
}


if (abs(angle_difference(gauge_scales[drawn_num],image_angle)) < 5){  
	global.gauge_set = true;
}
else {
	global.gauge_set = false;
}

audio_sound_gain(rick, (image_angle - 102.9) / 147.73, 1);

if(global.gauge_set == true){
		self.sprite_index = asset_get_index("spr_gauge_set");
} else {
		self.sprite_index = asset_get_index("spr_gauge");
}




