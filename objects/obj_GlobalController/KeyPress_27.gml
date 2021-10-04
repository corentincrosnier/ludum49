/// @description Insert description here
// You can write your code in this editor

if(room!=CharScreen){
	level=0;
	if(credits)
		title=true;
	room_goto(CharScreen);
}
else{
	game_end();
}