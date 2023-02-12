// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro amount_of_minigames 4 // keep in mind that minigames are counted from 0

global.score = 0;
global.mistakes = 0;

global.current_room_idx = -1;
global.last_room_idx = -1;

function ChangeToRandomRoom() {
	randomize();
	//show_message(global.used_rooms);
	if(global.mistakes == 3) {
		room_goto(Menu);
	} else {
		do{ 
			var room_idx = irandom(amount_of_minigames);
		} until(room_idx != global.last_room_idx);
		//temporary, since games 0 and 1 don't work
		room_idx = clamp(room_idx,2,3);
		global.current_room_idx = room_idx;
		global.last_room_idx = room_idx;
		var random_room = asset_get_index("minigame" + string(room_idx));
		room_goto(random_room);
	}
}

#macro amount_of_time_in_stats 1 // in seconds
function ChangeToStatsRoom() {
	room_goto(Stats);	
	timer = time_source_create(time_source_game, amount_of_time_in_stats, time_source_units_seconds, ChangeToRandomRoom, [], 1);
	time_source_start(timer);
}

function finishMinigame(isCompletedPositively) {
	if(isCompletedPositively) {
		global.score = global.score + 1;
	}
	else {
		global.mistakes = global.mistakes + 1;
	}
	
	
	ChangeToStatsRoom();
}

#macro display_width clamp(display_get_width(),0,1366)
#macro display_height clamp(display_get_height(),0,768)