/// @description Insert description here
// You can write your code in this editor

//vsp+=delta_time/1000000*grav
//y+=delta_time/1000000*y_speed;


if(y>room_height+100){
	instance_destroy(self);
}