#region Input
if (hasControl) {
	if (isMother) {
		key_left	 = keyboard_check(ord("A"));
		key_right	 = keyboard_check(ord("D"));
		key_up		 = keyboard_check(ord("W"));
		key_down	 = keyboard_check(ord("S"));
		key_run		 = 0; // keyboard_check(ord("Q"));
		key_activate = 0; // keyboard_check_pressed(vk_space);
		key_attack	 = 0; // keyboard_check_pressed(vk_shift);
		key_item	 = 0; // keyboard_check_pressed(vk_control);
	}
	else {
		key_left	 = keyboard_check(vk_left);
		key_right	 = keyboard_check(vk_right);
		key_up		 = keyboard_check(vk_up);
		key_down	 = keyboard_check(vk_down);
		key_run		 = 0; // keyboard_check(ord("Q"));
		key_activate = 0; // keyboard_check_pressed(vk_space);
		key_attack	 = 0; // keyboard_check_pressed(vk_shift);
		key_item	 = 0; // keyboard_check_pressed(vk_control);
	}
}
else {
	key_left	 = 0;
	key_right	 = 0;
	key_up		 = 0;
	key_down	 = 0;
	key_run		 = 0;
}
#endregion

#region Movement
input_direction = point_direction(0, 0, key_right - key_left, key_down - key_up); // Direction
input_magnitude = (key_right - key_left != 0) || (key_down - key_up != 0)		  // Magnitude

// Walk or run?
var _speed = 0;
if (key_run)
	_speed = run_speed;
else
	_speed = walk_speed

// Movement
h_speed = lengthdir_x(input_magnitude * _speed, input_direction);
v_speed = lengthdir_y(input_magnitude * _speed, input_direction);

// If left uncommented then player will move before checking for collision
/*
x += h_speed;
y += v_speed;
*/

// Check collision
scr_player_collision();

#endregion

#region Animation
// Sprite Index Update
var _old_sprite = sprite_index;
if(input_magnitude != 0){
	direction	 = input_direction;
	sprite_index = spr_run;
}
else sprite_index = spr_idle;
if(_old_sprite != sprite_index) 
	local_frame = 0;

// Update Image Index
scr_player_animate_spr();


#endregion



