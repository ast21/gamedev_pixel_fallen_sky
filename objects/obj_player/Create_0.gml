/// @description Insert description here
// You can write your code in this editor

switch(global.room_from) {
	case rm_main:
		x = 175; y = 245; break;
	case rm_corridor: break;
	case rm_corridor1: break;

	case rm_bedroom: 
		x = 510; y = 240; break;
	case rm_mom_bedroom: 
		x = 930; y = 240; break;
	case rm_bath: 
		x = 900; y = 370; break;
	case rm_library: 
		x = 450; y = 370; break;

	case rm_hall: 
		x = 895; y = 370; break;
	case rm_kitchen: 
		x = 510; y = 240; break;
}

global.room_from = room

moveSpeed = 4
hMove = 0
vMove = 0
hsp = 0
vsp = 0
