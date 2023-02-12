/// @description Drag arm, if current drag is shorter than .5s
// You can write your code in this editor

show_debug_message(drag_elapsed);
if(drag_elapsed < 500){
	x-=12;
}