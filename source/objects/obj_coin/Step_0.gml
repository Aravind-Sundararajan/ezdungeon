/// @description Insert description here
// You can write your code in this editor
//alarm[0] = 1
if place_meeting(x,y,obj_player){
global.coins +=1;
audio_play_sound(snd_collect, 2, false);
instance_create_layer(16*(random(300) div 16),16*(random(300) div 16),"actors",obj_coin)
instance_destroy(self)
}

if place_meeting(x,y,obj_enemy){
global.coins -=1;
audio_play_sound(snd_error, 2, false);
instance_create_layer(16*(random(300) div 16),16*(random(300) div 16),"actors",obj_coin)
instance_destroy(self)
}