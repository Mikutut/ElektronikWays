// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro amount_of_minigames 2 // keep in mind that minigames are counted from 0
global.last_room_index = -1;
global.current_room_index = -1;
function ChangeToRandomRoom() {
	if(global.mistakes == 3) return room_goto(Menu);
	do {
		var room_index = irandom(amount_of_minigames - 1);
	} until (room_index != global.last_room_index);
	global.current_room_index = room_index;
	if(global.last_room_index == -1) {
		global.last_room_index = room_index;
	}
	var random_room = asset_get_index("minigame" + string(room_index));
	room_goto(random_room);
}

#macro amount_of_time_in_stats 1 // in seconds
function ChangeToStatsRoom() {
	room_goto(Stats);	
	timer = time_source_create(time_source_game, amount_of_time_in_stats, time_source_units_seconds, ChangeToRandomRoom, [], 1);
	time_source_start(timer);
}

function finishMinigame(isCompletedPositively) {
	if(isCompletedPositively) global.score = global.score + 1;
	else global.mistakes = global.mistakes + 1;
	global.last_room_index = global.current_room_index;
	ChangeToStatsRoom();
}