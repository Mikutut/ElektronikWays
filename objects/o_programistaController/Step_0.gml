/// @description Insert description here
// You can write your code in this editor

if(global.mg3_gameState == 0 || global.mg3_gameState == 2) {
	instance_deactivate_object(o_programistaHeap);
	instance_activate_object(o_programistaSeg);
} else {
	instance_deactivate_object(o_programistaSeg);
	instance_activate_object(o_programistaHeap);
}