play() {
	audio_sound_gain(global.snd_main, 0, 0)
	audio_play_sound(au_door, 0, false)
	audio_sound_gain(global.snd_main, 1, 5000)
}