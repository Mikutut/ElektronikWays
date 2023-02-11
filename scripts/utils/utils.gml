// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

#macro amount_of_minigames 2 // keep in mind that minigames are counted from 0
function ChangeToRandomRoom() {
	var random_room = asset_get_index("minigame" + string(irandom(amount_of_minigames - 1)));
	room_goto(random_room);
}

function ChangeToStatsRoom() {
	room_goto(Stats);	
	time_source_create();
}