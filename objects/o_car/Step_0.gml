if(x > room_width) {
	var randomCarSprite = asset_get_index("spr_car" + string(irandom(3)));
	sprite_index = randomCarSprite; 
	
	timer = time_source_create(time_source_game, random_range(0, 0.5), time_source_units_seconds, function() {
		x = -sprite_width - 100;
		hspeed = irandom(8) + 12;
	}, [], 1);
	time_source_start(timer);
} 
