if (hasBaby) {
	sprite_index = spr_directions;
	if (!soundPlayed) {
		audio_play_sound(CarIgnition, 1, false);
		soundPlayed = true;
	}
}
else {
	sprite_index = spr_idle;
	soundPlayed = false;
}

h_speed = lengthdir_x(_speed, _direction);
v_speed = lengthdir_y(_speed, _direction);
scr_player_collision();

var _cardinal_direction  = round(_direction / 90);
if (hasBaby) image_index = _cardinal_direction; // reaching the right image frame