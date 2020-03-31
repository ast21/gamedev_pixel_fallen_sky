/// @description Insert description here
// You can write your code in this editor

global.room_from = rm_main
global.control = true
global.paused = false

global.snd_main = audio_play_sound(au_main, 0, true)
audio_sound_gain(global.snd_main, 0, 0);
audio_sound_gain(global.snd_main, 1, 5000);

