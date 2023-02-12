// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro amount_of_minigames 4 // keep in mind that minigames are counted from 0

global.score = 0;
global.mistakes = 0;

global.current_room_index = -1;
global.used_rooms = [];

function ChangeToRandomRoom() {
	//show_message(global.used_rooms);
	if(global.mistakes == 3) {
		room_goto(Menu);
	} else {
		do {
			var room_index = irandom(amount_of_minigames - 1);
		} until (array_contains(global.used_rooms, room_index) == false);
		global.current_room_index = room_index;
		var random_room = asset_get_index("minigame" + string(room_index));
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
	
	if(array_length(global.used_rooms) >= amount_of_minigames - 1) {
		array_delete(global.used_rooms, 0, array_length(global.used_rooms));	
	}
		
	array_push(global.used_rooms, global.current_room_index);
	
	ChangeToStatsRoom();
}