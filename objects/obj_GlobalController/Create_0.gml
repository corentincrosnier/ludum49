/// @description Insert description here
// You can write your code in this editor


/*Physics Vars:
density:2
restitution=0
collision group 1
linear damping 0.1
angular damping 0.1
friction 10




*/
globalvar theme;
theme=0;

globalvar level;
level=0;

globalvar form_objs;
form_objs[0][0]=obj_triStar;
form_objs[0][1]=obj_recStar;
form_objs[0][2]=obj_squareStar;
form_objs[0][3]=obj_roundStar;

form_objs[1][0]=obj_triPlante;
form_objs[1][1]=obj_recPlante;
form_objs[1][2]=obj_squarePlante;
form_objs[1][3]=obj_roundPlante;

form_objs[2][0]=obj_triSpooky;
form_objs[2][1]=obj_recSpooky;
form_objs[2][2]=obj_squareSpooky;
form_objs[2][3]=obj_roundSpooky;

globalvar thumb_sprite;
thumb_sprite[0][0]=miniature_tri_nuit;
thumb_sprite[0][1]=miniature_rect_nuit;
thumb_sprite[0][2]=miniature_carre_nuit;
thumb_sprite[0][3]=miniature_rond_nuit;

thumb_sprite[1][0]=miniature_tri_plante;
thumb_sprite[1][1]=miniature_rect_plante;
thumb_sprite[1][2]=miniature_carre_plante;
thumb_sprite[1][3]=miniature_rond_plante;

thumb_sprite[2][0]=miniature_tri_spooky;
thumb_sprite[2][1]=miniature_rect_spooky;
thumb_sprite[2][2]=miniature_carre_spooky;
thumb_sprite[2][3]=miniature_rond_spooky;

enum e_piece_type {
	triangle,
	rectangle,
	square,
	circle
}

randomize();

globalvar credits;
credits=false;
title=false;

globalvar gainLvl;
gainLvl[0]=0.8;
gainLvl[1]=0.7;
gainLvl[2]=0.38;

audio_sound_gain(snd_level1, gainLvl[0], 0);
audio_sound_gain(snd_level2, gainLvl[1], 0);
audio_sound_gain(snd_level3, gainLvl[2], 0);
audio_sound_gain(snd_title, 0.17, 0);
audio_sound_gain(snd_countdown, 0.6, 0);
audio_sound_gain(snd_timer_start, 0.6, 0);
audio_sound_gain(snd_loss, 0.6, 0);