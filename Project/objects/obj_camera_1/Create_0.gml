/////////////////////// REQUIREMENTS ////////////////////////
// 1. Basic Project Setup Required						   //
// 2. Enable Viewport									   //
// 3. Viewport 0: Check VISIBLE							   //
// 4. Object Following: Set to No Object				   //
// 5. Set "following" to the desired object to be followed //
// Controller Script: change_camera_mode				   //
// Reference: FriendlyCosmonaut							   //
/////////////////////////////////////////////////////////////

enum cammode {
	follow_object,
	follow_mouse_drag,
	follow_mouse_border,
	follow_mouse_peek,
	move_to_target,
	move_to_follow_object
}

// change this Global Variable to switch between Camera Modes
mode	= cammode.follow_object;

following	= obj_father;
boundless	= false;

target_x = 200;
target_y = 200;

mouse_xprevious = -1;
mouse_yprevious = -1;

// Shake
cam = view_camera[0];
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

//if(alarm[0] <= 0)
//	alarm[0] = 15 * FRAME_RATE;