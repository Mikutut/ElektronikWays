 /// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_text(773, 220, global.score);
if(global.mistakes >= 1) draw_text(709, 347, "1");
if(global.mistakes >= 2) draw_text(650, 468, "1");
if(global.mistakes >= 3) draw_text(663, 568, "1");