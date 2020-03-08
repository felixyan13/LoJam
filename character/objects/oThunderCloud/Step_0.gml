/// @description Insert description here
// You can write your code in this editor
count = count + 1;
image_speed = 1; //speed of animation

if(global.color == "BLUE"){
	sprite_index = spriteTCloudBlue;
}
else if(global.color == "YELLOW"){
	sprite_index = spriteTCloudYellow;
}
if(count>180){	
	if( flip == 1 && place_meeting(x, y, objectBlueWall)){
		x = x;
	}
	else{
		x = x + 1;	
	}
}

