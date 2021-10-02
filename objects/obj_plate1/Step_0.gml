/// @description Insert description here
// You can write your code in this editor


//Solution 1
/*
var _x=window_mouse_get_x();
var _y=window_mouse_get_y();
clamp(_x,minX,maxX);
clamp(_y,minY,maxY);
window_mouse_set(_x,_y);
*/

//phy_position_x=clamp(lerp(x,mouse_x,0.1),minX,maxX);
//phy_position_x=lerp(x,mouse_x,0.05);
//phy_position_y=clamp(lerp(y,mouse_y,0.1),minY,maxY);
//phy_position_y=lerp(y,mouse_y,0.05);

phy_speed_x=0.05*(mouse_x-x);
phy_speed_y=0.05*(mouse_y-y);


var dir=point_direction(prevMouseX,prevMouseY,mouse_x,mouse_y);
/*
var dx=lengthdir_x(spd,dir);
var dy=lengthdir_y(spd,dir);
*/

//Solution 2 
/*
var dx=mouse_x-prevMouseX;
var dy=mouse_y-prevMouseY;
phy_speed_x=lerp(phy_speed_x,dx,0.1);
phy_speed_y=lerp(phy_speed_y,dy,0.1);
clamp(phy_position_x,minX,maxX);
clamp(phy_position_y,minY,maxY);
*/

prevMouseX=mouse_x;
prevMouseY=mouse_y;