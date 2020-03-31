/// @description Insert description here
// You can write your code in this editor

//if (keyboard_check(vk_escape) && room != rm_pause) {
//	room_goto(rm_pause)
//} else if (keyboard_check(vk_escape)) {
//	room_goto_previous()
//}

if keyboard_check_pressed(vk_escape) && room != rm_pause { //or whatever key activates the pause screen
	global.paused = true
	room_goto(rm_pause)
} else if (keyboard_check_pressed(vk_escape)) {
	room_goto(global.room_from)
}
