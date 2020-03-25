///@desc Update Sprite

// Converting our degrees (0-360) into a number (0-3)
var _cardinal_direction = round(direction / 90); // For 8 directions, use: round(direction / 45);

var _total_frames		= sprite_get_number(sprite_index) / 4; // 4 because we have 4 directions
image_index				= local_frame + (_cardinal_direction * _total_frames); // reaching the right image frame
local_frame			   += sprite_get_speed(sprite_index) / FRAME_RATE; // 15/60 so local_frame += 0.25 each step

// If animation would loop on next game step
// Basically subtract 8 (_total_frames)
if(local_frame >= _total_frames){
	animation_end  = true;
	local_frame	  -= _total_frames;
}
else {
	animation_end = false;
}