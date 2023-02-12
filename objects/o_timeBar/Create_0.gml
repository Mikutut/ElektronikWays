/// @description Make bar fill entire screen width
// You can write your code in this editor

window_width = display_get_width();

// Division applied because we're scaling,
// not setting width
image_xscale = window_width / sprite_get_width(sprite_index);