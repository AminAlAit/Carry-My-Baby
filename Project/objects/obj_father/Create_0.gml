#region Collision
collision_map = layer_tilemap_get_id(layer_get_id("Collision"));
#endregion
#region Basics
//
image_speed = 0;
h_speed		= 0;
v_speed		= 0;
walk_speed	= 5.0;
run_speed	= 3.0;

//
spr_run		= spr_bob_run;
spr_idle	= spr_bob;
local_frame = 0;				// the frame we are at relative to the animation we are using

#endregion
#region Parent variables
hasControl = true;
_id		   = parent.father;		// father
#endregion