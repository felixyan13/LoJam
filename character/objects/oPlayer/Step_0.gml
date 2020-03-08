/// @description Insert description here
// You can write your code in this editor
//happens every frame of the game (60 fps)

//get player input
key_left = keyboard_check(vk_left); //checks if virtual keyboard left is pressed
key_right = keyboard_check(vk_right);
//for a key press, not held down event:
vsp = vsp + grv;
if(global.color == "ORANGE"){
	key_jump = keyboard_check_pressed(vk_space);
	if(place_meeting(x,y+1,oFloor)  && (key_jump)){
	vsp = -7;
}
}
	
//calculate movement
//var means the temp variable is only checked in the current frame
var move = key_right - key_left;
//horizontal speed = movement direction * walking speed
hsp = move * walksp;
if(global.color == "BLUE"){
	hsp = 2*move*walksp;	
}




//horizontal collision detection
if (place_meeting(x+hsp, y, oFloor)){
	while(!place_meeting(x + sign(hsp), y, oFloor)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
//horizontal coordinate of the object
x = x + hsp;

//horizontal collision detection
if (place_meeting(x, y+vsp, oFloor)){
	while(!place_meeting(x, y+sign(vsp), oFloor)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
//horizontal coordinate of the object
y = y + vsp;

if (keyboard_check_pressed(vk_escape))
{
	//reset color and settings
	global.color = "";
	room_goto(room0);
	oPlayer.x = 50;
	oPlayer.y = 570;
}
//animation
//depending on box/amount of level completion
//before completing box 1

image_xscale = 1.5;
image_yscale = 1.5;

if(hsp == 0){
	sprite_index = spritePlayerStill;
	image_speed = 0; //speed of animation
	image_index = 0;
	if(global.color == "YELLOW"){
		image_index = 1;	
	}
	else if(global.color == "RED"){
		image_index = 2;	
	}
	else if(global.color == "ORANGE"){
		image_index = 3;	
	}
	else if(global.color == "GREEN"){
		image_index = 4;	
	}
	else if(global.color == "PURPLE"){
		image_index = 5;	
	}
	//condition colour for all gems to show
	//condition for crown to show
}
else{
	image_xscale = sign(hsp)*1.5; //can also scale the size
	image_speed = 1;
	sprite_index = spritePlayerMove;	
	if(global.color == "YELLOW"){
		sprite_index = spritePlayerMoveG1;	
	}
	else if(global.color == "RED"){
		sprite_index = spritePlayerMoveG2;		
	}
	else if(global.color == "ORANGE"){
		sprite_index = spritePlayerMoveG3;		
	}
	else if(global.color == "GREEN"){
		sprite_index = spritePlayerMoveG4;		
	}
	else if(global.color == "PURPLE"){
		sprite_index = spritePlayerMoveG5;		
	}
	//condition for all gems to show
}


