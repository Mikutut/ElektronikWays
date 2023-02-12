/// @description Drag arm, if current drag is shorter than .5s
// You can write your code in this editor

drag_elapsed = current_time - drag_time;
if(drag_elapsed < 500){
	x-=12;
}