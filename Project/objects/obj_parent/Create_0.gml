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
spr_run		= spr_karen_run;
spr_idle	= spr_karen;
local_frame = 0;				// the frame we are at relative to the animation we are using

#endregion
#region Parent variables
hasControl = true;
hasBaby = false;
isMother = true;
baby_colliding = -1;
_id		   = parent.mother;		// Mother
#endregion

alarm[0] = 1;