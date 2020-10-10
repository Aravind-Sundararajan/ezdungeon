/// @description Insert description here
// You can write your code in this editor

if canmove {
	canmove = false;
	alarm[0] = 16;
	old_x = x;
	old_y = y;
	x_speed =0;
	y_speed =0;
	if place_meeting(x, y, obj_track_horizontal){
		if (last_x > x) {
			//x = x- 16;
			x_speed = -1;
		}
		if (last_x < x) {
			//x = x+ 16;
			x_speed = 1;
		}
		
	}
	else if place_meeting(x, y, obj_track_vertical){
		if (last_y > y) {
			//y = y- 16;
			y_speed = -1;
		}
		else {
			//y = y+ 16;
			y_speed = 1;
		}
	}
	else if place_meeting(x, y, obj_track_BR){
		if (last_x == x) {
			//x = x+ 16;
			x_speed = 1;
		}
		else{
			//y = y+ 16;
			y_speed = 1;
		}
	}
	else if place_meeting(x, y, obj_track_BL){
		if (last_x == x) {
			//x = x- 16;
			x_speed = -1;
		}
		else{
			//y = y+ 16;
			y_speed = 1;
		}	
	}
	else if place_meeting(x, y, obj_track_TR){
		if (last_x == x) {
			//x = x + 16;
			x_speed = 1;
		}
		else{
			//y = y- 16;
			y_speed = -1;
		}	
	}
	else if place_meeting(x, y, obj_track_TL){
		if (last_x == x) {
			//x = x - 16;
			x_speed = -1;
		}
		else{
			//y = y- 16;
			y_speed = -1;
		}
	}
	last_x = old_x;
	last_y = old_y;
if (x_speed == 0) and (y_speed == 0){
audio_play_sound(snd_ded, 2, false);
room_goto_next()
instance_destroy(self)
}
}
x += x_speed
y += y_speed
/*
if keyboard_check_pressed(ord("W"))
{
	if position_meeting( x, y-16, par_track )
	{	
		y=y-16;
	}
}


if keyboard_check_pressed(ord("S"))
{
	if position_meeting( x, y+16, par_track )
	{	
		y=y+16;
	}
}


if keyboard_check_pressed(ord("A"))
{
	if position_meeting( x-16, y, par_track )
	{	
	x=x-16;
	}
}


if keyboard_check_pressed(ord("D"))
{
	if position_meeting( x+16, y, par_track )
	{	
	x=x+16;
	}
}
*/