/// @description Display level objective
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(global.gaff);
draw_text(x,y,header_text);
draw_set_font(global.gaff_small);
draw_text(x,y+80,desc_text);

if(current_second - start_time == 3) instance_destroy();