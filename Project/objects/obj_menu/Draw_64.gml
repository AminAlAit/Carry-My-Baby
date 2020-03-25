if(!global.pause) exit;

var gwidth  = camera_get_view_width(view_camera[0]);
var gheight = camera_get_view_height(view_camera[0]);

var ds_grid	  = menu_pages[page]; 
var ds_height = ds_grid_height(ds_grid);
var y_buffer  = 32, x_buffer = 16;
var start_y   = (gheight/2) - ((((ds_height - 1)/2) * y_buffer)), start_x = gwidth/2;

////////////////////////////////Draw Pause Menu "Back"

//var topLeft_color;
//var topRight_color;
//var bottomRight_color;
//var topRight_color;

//var i = 0;
//for (i = 0; i < 600; i++){
	
//}

var topLeft_color		= c_black;
var topRight_color		= c_gray;
var bottomRight_color	= c_gray;
var bottomLeft_color	= c_black;

//draw_sprite(spr_menu_black_rect, 0, 523, 280);
//draw_sprite(spr_menu_black_rect, 0, start_x, start_y);

//draw_rectangle_color(0, 0, gwidth, gheight, topLeft_color, topRight_color, bottomRight_color, topRight_color, false);

#region Draw Elements on Left Side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer, lty, text_color, x0; 

var yy = 0;
repeat(ds_height){
	lty			= start_y + (yy*y_buffer);
	text_color	= c_gray;
	x0			= 0;
	
	if(yy == menu_option[page]){
		text_color = c_white;
		x0 = -(x_buffer/2);
	}
	
	draw_text_color(ltx + x0, lty, ds_grid[# 0, yy], text_color, text_color, text_color, text_color, 1);
	yy++;
}
#endregion
#region Draw Dividing Line
draw_line(start_x, start_y-y_buffer, start_x, lty+y_buffer);

#endregion
#region Draw Elements on Right Side
draw_set_halign(fa_left);

var rtx = start_x + x_buffer, rty;

yy = 0; repeat(ds_height){
	rty = start_y + (yy*y_buffer);
	
	switch(ds_grid[# 1, yy]){
		// Shifts
		case menu_element_type.shift:
			var current_val		= ds_grid[# 3, yy];
			var current_array	= ds_grid[# 4, yy];
			var left_shift		= "<< ";
			var right_shift		= " >>"; 
		
			text_color = c_white;
		
			if(current_val == 0) left_shift = "";
			if(current_val == array_length_1d(ds_grid[# 4, yy])-1) right_shift = "";
			
			if(inputting and yy == menu_option[page]){	text_color = c_yellow;	}
			draw_text_color(rtx, rty, left_shift + current_array[current_val] + right_shift, text_color, text_color, text_color, text_color, 1);
			
		break;
		// Sliders
		case menu_element_type.slider:
			var len = 64;
			var current_val = ds_grid[# 3, yy];
			var current_array = ds_grid[# 4, yy];
			var circle_pos = ((current_val - current_array[0]) / (current_array[1] - current_array[0]));
			text_color = c_white;
			
			draw_line_width(rtx, rty, rtx + len, rty, 2);
			
			if(inputting and yy == menu_option[page]){	text_color = c_yellow;	}
			draw_circle_color(rtx + (circle_pos*len), rty, 4, text_color, text_color, false);
			draw_text_color(rtx + (len * 1.2), rty, string(floor(circle_pos*100)) + "%", text_color, text_color, text_color, text_color, 1);
		
		break;
		// Toggle
		case menu_element_type.toggle:
			var current_val = ds_grid[# 3, yy];
			var c1, c2;
			text_color = c_white;
			
			if(inputting and yy == menu_option[page]){	text_color = c_yellow;	}
			
			if(current_val == 0) { c1 = text_color; c2 = c_dkgray; }
			else				 { c1 = c_dkgray; c2 = text_color; }
			
			draw_text_color(rtx, rty, "ON", c1, c1, c1, c1, 1);
			draw_text_color(rtx + 32, rty, "OFF", c2, c2, c2, c2, 1);
		
		break;
		// Input
		case menu_element_type.input:
			var current_val = ds_grid[# 3, yy];
			var string_val;
		
			switch(current_val){
				case vk_up:		string_val = "UP KEY";				break;
				case vk_left:	string_val = "LEFT KEY";			break;
				case vk_right:	string_val = "RIGHT KEY";			break;
				case vk_down:	string_val = "DOWN KEY";			break;
				default:		string_val = string(current_val);	break;
			}
			text_color = c_white;
			if(inputting and yy == menu_option[page]){	text_color = c_yellow;	}
			draw_text_color(rtx, rty, string_val, text_color, text_color, text_color, text_color, 1);
		
		break;
		}
	yy++;
}

draw_set_valign(fa_top);
#endregion