/// @description Insert description here
// You can write your code in this editor

var track = noone;
var H = noone;
var V = noone;
var BR = noone;
var BL = noone;
var TR = noone;
var TL = noone;
if mouse_check_button_pressed(mb_left){
	track = instance_position(mouse_x, mouse_y, par_track);
	if track != noone
	{
		show_debug_message("I should delete!");
		with (track) instance_destroy(id);
		global.paths +=1;
	}
	else
	{
		if (global.paths > 0){
		instance_create_layer(16 * (mouse_x div 16) ,16 * (mouse_y div 16),"Instances",obj_track_horizontal);
		global.paths -=1;
		}else{
			audio_play_sound(snd_error, 2, false);
		}
	}
}
if mouse_check_button_pressed(mb_right){
	H = instance_position(mouse_x, mouse_y, obj_track_horizontal);
	V = instance_position(mouse_x, mouse_y, obj_track_vertical);
	BR = instance_position(mouse_x, mouse_y, obj_track_BR);
	BL = instance_position(mouse_x, mouse_y, obj_track_BL);
	TR = instance_position(mouse_x, mouse_y, obj_track_TR);
	TL = instance_position(mouse_x, mouse_y, obj_track_TL);

	if H != noone
	{
		instance_create_layer(16 * (mouse_x div 16) ,16 * (mouse_y div 16),"Instances",obj_track_vertical);
		
		with (H) instance_destroy(id);
		
	}
	if V != noone
	{
		instance_create_layer(16 * (mouse_x div 16) ,16 * (mouse_y div 16),"Instances",obj_track_BR);
		
		with (V) instance_destroy(id);
		
	}
	if BR != noone
	{
		instance_create_layer(16 * (mouse_x div 16) ,16 * (mouse_y div 16),"Instances",obj_track_BL);
		
		with (BR) instance_destroy(id);
		
	}	
	if BL != noone
	{
		instance_create_layer(16 * (mouse_x div 16) ,16 * (mouse_y div 16),"Instances",obj_track_TR);
		
		with (BL) instance_destroy(id);
		
	}	
	if TR != noone
	{
		instance_create_layer(16 * (mouse_x div 16) ,16 * (mouse_y div 16),"Instances",obj_track_TL);
		
		with (TR) instance_destroy(id);
		
	}	
	if TL != noone
	{
		instance_create_layer(16 * (mouse_x div 16) ,16 * (mouse_y div 16),"Instances",obj_track_horizontal);
		
		with (TL) instance_destroy(id);
		
	}		
}
