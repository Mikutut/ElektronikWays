   /// @description Destroy timers
// You can write your code in this editor

time_source_destroy(minigame_timer);
if(time_source_exists(resize_timer)) {
	time_source_destroy(resize_timer);	
}