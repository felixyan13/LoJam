/// @description Insert description here
// You can write your code in this editor

if(global.color == "RED"){
	sprite_index = spriteFriendlyCloud;
	image_index = 1;
}

else{
	sprite_index = spriteFriendlyCloud;
	image_index = 0;
}

if(place_meeting(x, y, oThunderCloud)){
	sprite_index = spriteFriendlyCloud;
	image_index = 2;
}


