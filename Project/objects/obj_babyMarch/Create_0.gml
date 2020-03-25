hasBaby = false;
baby = -1;
soundPlayed = false;

collision_map = layer_tilemap_get_id(layer_get_id("Collision"));

_direction = 0;
_speed	   = 0;

h_speed = 0;
v_speed = 0;


key_run		 = 0;
key_activate = 0;
key_attack	 = 0;
key_item	 = 0;

spr_directions = spr_babyMarch_directions;
spr_idle = spr_babyMarch;

alarm[0] = choose(5, 10);