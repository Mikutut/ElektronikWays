 /// @description Make bar fill entire screen width and set up minigame time
// You can write your code in this editor

// Division applied because we're scaling,
// not setting width
image_xscale = display_get_width() / sprite_get_width(sprite_index);
  
function calculateScale(mult) {
	return (display_get_width() / sprite_get_width(sprite_index)) * mult;	
}

base_minigame_time = -1;
minigame_time = -1;
minigame_timer_expired_wins = false; // Whether timer expiration counts as win or lose

// TODO: Add other minigames to the if-statement
if(global.current_room_index == 0) {
	// FIXME: Made-up values, replace them accordingly
	base_minigame_time = 10;
	minigame_timer_expired_wins = false;
} else if(global.current_room_index == 1) {
	// FIXME: Made-up values, replace them accordingly
	base_minigame_time = 10;
	minigame_timer_expired_wins = false;
} else if(global.current_room_index == 2) {
	base_minigame_time = 10;	
	minigame_timer_expired_wins = true;
} else if(global.current_room_index == 4) {
	base_minigame_time = 10;
	minigame_timer_expired_wins = true;
}

minigame_time = base_minigame_time;

resize_timer = time_source_create(time_source_game, 1, time_source_units_seconds, function() {
	minigame_time--;
	image_xscale = calculateScale(minigame_time / base_minigame_time);
}, [], minigame_time); 
minigame_timer = time_source_create(time_source_game, minigame_time, time_source_units_seconds, function() {
	time_source_destroy(resize_timer);
	finishMinigame(minigame_timer_expired_wins);	
});

time_source_start(minigame_timer);
time_source_start(resize_timer);
