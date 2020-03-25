cx = camera_get_view_x(view_camera[0]);
cy = camera_get_view_y(view_camera[0]);

switch(mode){
	#region Follow Object
	case cammode.follow_object:
		if(!instance_exists(following)) 
			break;
		cx = following.x - (view_w / 2);
		cy = following.y - (view_h / 2);
	break;#endregion
	#region Follow Mouse Drag
	case cammode.follow_mouse_drag:
	
		var mx = display_mouse_get_x();
		var my = display_mouse_get_y();
	
		if(mouse_check_button(mb_left)){
			cx += (mouse_xprevious - mx) * 0.5;
			cy += (mouse_yprevious - my) * 0.5;
		}
		
		mouse_xprevious = mx;
		mouse_yprevious = my;
		
	break;#endregion
	#region Follow Mouse Border
	case cammode.follow_mouse_border:
		if(!point_in_rectangle(mouse_x, mouse_y, cx + (view_w * 0.1), cy + (view_h * 0.1),  cx + (view_w * 0.9), cy + (view_h * 0.9))){
			cx = lerp(cx, mouse_x - (view_w / 2), 0.01);
			cy = lerp(cy, mouse_y - (view_h / 2), 0.01);
		}
	break;#endregion
	#region Follow Mouse Peek
	case cammode.follow_mouse_peek:
		cx = lerp(following.x, mouse_x, 0.2) - (view_w / 2);
		cy = lerp(following.y, mouse_y, 0.2) - (view_h / 2);
	break;#endregion
	#region Move to target
	case cammode.move_to_target:
		cx = lerp(cx, target_x - (view_w / 2), 0.1);
		cy = lerp(cy, target_y - (view_h / 2), 0.1);
	break;#endregion
	#region Move to Follow Object
	case cammode.move_to_follow_object:
		if(!instance_exists(following)) break;
		cx = lerp(cx, following.x - (view_w / 2), 0.1);
		cy = lerp(cy, following.y - (view_h / 2), 0.1);
		
		if(point_distance(cx, cy, following.x - (view_w / 2), following.y - (view_h / 2)) < 2){
			mode = cammode.follow_object;
		}
	break;#endregion
}

// Don't go beyond room boundaries
if(!boundless){
	cx = clamp(cx, 0, room_width  - view_w);
	cy = clamp(cy, 0, room_height - view_h);
}

// Shake
x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

//Screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain - ((1 / shake_length) * shake_magnitude));


camera_set_view_pos(view_camera[0], cx, cy);