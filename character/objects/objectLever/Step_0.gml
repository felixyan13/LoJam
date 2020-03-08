/// @description Insert description here
// You can write your code in this editor

if(global.color == "BLUE"){
	sprite_index = spriteLever;
	image_index = 0;
	if(keyboard_check_pressed(vk_enter) && place_meeting(x,y,oPlayer)){
		image_index = 1;
	}
	
}
else{
	sprite_index = spriteLever;
	image_index = 2;
}
