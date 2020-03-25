///@description change_camera_mode
///@arg mode
///@arg following/target_x
///@arg following/target_y
// Reference: FriendlyCosmonaut
// Script Exclusive for obj_camera

var _mode  = argument0;
var _x_pos = argument1;
var _y_pos = argument2;


with(obj_camera){
	mode = _mode;
	
	switch(mode){
		case cammode.move_to_target:
			target_x = _x_pos;
			target_y = _y_pos;
		break;
		
		case cammode.follow_object:
		case cammode.move_to_follow_object:
			following = argument[1];
		break;
	}
}