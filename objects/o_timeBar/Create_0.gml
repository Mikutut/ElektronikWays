 /// @description Make bar fill entire screen width and set up minigame time
// You can write your code in this editor

// Division applied because we're scaling,
// not setting width
image_xscale = display_width / sprite_get_width(sprite_index);


function calculateScale(mult) {
	return (display_width / sprite_get_width(sprite_index)) * mult;	
}

function game_conditions(time,expired_wins){
		base_minigame_time = time;
		minigame_timer_expired_wins = expired_wins;
}

base_minigame_time = -1;
minigame_time = -1;
minigame_timer_expired_wins = false; // Whether timer expiration counts as win or lose

// TODO: Add other minigames to the if-statement
switch (global.current_room_idx){
	case 0:
		game_conditions(clamp(10 / global.multiplier,2,10), false);
		break;
	case 1: 
		game_conditions(clamp(7 * global.multiplier,7,15), true);
		break;
	case 2:
		game_conditions(8, true);
		break;
	case 3:
		game_conditions(clamp(10 / (global.multiplier * 1.5),2.2,12), false);
		break;
	case 4:
		game_conditions(clamp(8 / global.multiplier,4,10), false);
	break;
	case 5:
		game_conditions(clamp(12 / global.multiplier,4,12), false);
		break;
	default:
		game_conditions(5, false);
		break;
}

minigame_time = base_minigame_time;

resize_timer = time_source_create(time_source_game, .1, time_source_units_seconds, function() {
	minigame_time -= .1;
	image_xscale = calculateScale(minigame_time / base_minigame_time);
}, [], -1);
minigame_timer = time_source_create(time_source_game, base_minigame_time, time_source_units_seconds, function() {
	time_source_destroy(resize_timer);
	finishMinigame(minigame_timer_expired_wins);	
});


time_source_start(minigame_timer);
time_source_start(resize_timer);
