/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text(1200, 230, random_code);

if(string_length(global.combination) >= 3){
	if(global.combination == random_code){
		finishMinigame(true);
	}
	else{
		finishMinigame(false);
	}
}