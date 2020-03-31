/// @description Insert description here
// You can write your code in this editor

if keyboard_check_released(ord("E")) {
	audio_sound_gain(global.snd_main, 0, 0)
	audio_play_sound(au_tap, 0, false)
	audio_sound_gain(global.snd_main, 1, 5000)
	image_index = (image_index - 1) * (image_index - 1)
}