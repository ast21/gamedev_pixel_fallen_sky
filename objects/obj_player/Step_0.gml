/// @description Insert description here
// You can write your code in this editor

if global.control {

	// переменные
	keyRight = keyboard_check(ord("D"))
	keyLeft = -keyboard_check(ord("A"))
	keyUp = -keyboard_check(ord("W"))
	keyDown = keyboard_check(ord("S"))

	vMove = keyRight + keyLeft
	hMove = keyUp + keyDown

	vsp = vMove * moveSpeed
	hsp = hMove * moveSpeed


	// перемещения
	if (hMove = 1) {
		sprite_index = sp_player_down
		direction = 270
	} else if (hMove = -1) {
		sprite_index = sp_player_up
		direction = 90
	}
	if (vMove = 1) {
		sprite_index = sp_player_right
		direction = 0
	} else if (vMove = -1) {
		sprite_index = sp_player_left
		direction = 180
	}


	if (vMove = 0 && hMove = 0) {
		switch (direction) {
			case 0: sprite_index = sp_player_right; break;
			case 90: sprite_index = sp_player_up; break;
			case 180: sprite_index = sp_player_left; break;
			case 270: sprite_index = sp_player_down; break;
		}
		image_speed = 0
		image_index = 0
	} else {
		image_speed = 1
	}

	// столкновение со стеной
	if (place_meeting(x + vsp, y, obj_hidden_wall)) {
		while (!place_meeting(x + sign(vsp), y, obj_hidden_wall)) {
			x += sign(vsp)
		}
		vsp = 0
	}
	if (place_meeting(x, y + hsp, obj_hidden_wall)) {
		while (!place_meeting(x, y + sign(hsp), obj_hidden_wall)) {
			y += sign(hsp)
		}
		hsp = 0
	}


	// смещение игрока
	x += vsp
	y += hsp

}