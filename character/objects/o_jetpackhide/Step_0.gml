/// @description Insert description here
// You can write your code in this editor

if (start_timer == true) {timer = room_speed * 30;}

if (timer > 0) {timer--;}

if ((timer == 0) && (global.color == "GREEN"))
{
 timer = -1; // This is important, or the timer will trigger every step once it runs out
 instance_destroy(id);
}