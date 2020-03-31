/// @description Insert description here
// You can write your code in this editor
if keyboard_check_released(ord("E")) {
	audio_sound_gain(global.snd_main, 0, 0);
	audio_play_sound(au_door, 0, false)
	audio_sound_gain(global.snd_main, 1, 5000);
	global.control = false
	alarm[0] = 35
}