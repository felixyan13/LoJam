/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(vk_enter) && place_meeting(x,y,oPlayer) && global.color == "YELLOW"){
	global.angle = 1;	
}

if(global.angle == 1){
	image_angle = 0;	
	sprite_set_offset(1, 0, 30);
}
else{
	image_angle = 90;	
}
