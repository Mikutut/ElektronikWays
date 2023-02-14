if((move_right && x > (room_width - sprite_width)) || (!move_right && x < (0 - sprite_width)) ) {
	var randomCarSprite = asset_get_index("spr_car" + string(irandom(3)));
	sprite_index = randomCarSprite; 
	
	timer = time_source_create(time_source_game, random_range(0, 0.2), time_source_units_seconds, function() {
		if(!move_right){
			hspeed = -(irandom(50) + 12); 
			x = room_width + sprite_width;
		}
		else{
			hspeed = irandom(50) + 12; 
			x = 0 + sprite_width;
		}
	}, [], 1);
	time_source_start(timer);
}  