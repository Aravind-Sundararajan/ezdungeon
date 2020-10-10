/// @description Insert description here
// You can write your code in this editor
for (x = 0; x < 300; x++){
	instance_create_layer(8*(random(300) div 8), 4*(random(300) div 4),"decorations",obj_brick)
}

for (x = 0; x < 200; x++){
	instance_create_layer(8*(random(300) div 8), 4*(random(300) div 4),"decorations",obj_rubble)
}