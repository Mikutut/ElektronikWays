/// @description Rotate accordingly to mouse position
// W tym edytorze możesz zapisać swój kod

var pt = point_direction(self.x, self.y, mouse_x, mouse_y);

if(global.gauge_focus == true){
	if(global.last_pt == pt) return;
	else if(pt <= 251.72 && pt >= 102.9){ 
		image_angle = pt;
		global.last_pt = pt;
	}
	else return;
}

if(
	pt == global.gauge_scales[global.drawn_num] || 
	(pt <= global.gauge_scales[global.drawn_num] + 2.5 && pt >= global.gauge_scales[global.drawn_num]) ||
	(pt >= global.gauge_scales[global.drawn_num] - 2.5 && pt <= global.gauge_scales[global.drawn_num])
) global.gauge_set = true;
else global.gauge_set = false;



