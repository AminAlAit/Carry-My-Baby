var _h_collision = false;
var _v_collision = false;

// Horizontal Tiles
if(tilemap_get_at_pixel(collision_map, x + h_speed, y)){
	// Move left
	x -= x mod TILE_SIZE;
	// Or move Right
	if (sign(h_speed) == 1) // if horizontal speed is positive
		x += TILE_SIZE - 1;
		
	// Stop speed
	h_speed = 0;
	// announce a collision
	_h_collision = true;
}

// Horizontal move commit
x += h_speed;

// Vertical Tiles
if(tilemap_get_at_pixel(collision_map, x, y + v_speed)){
	// Move left
	y -= y mod TILE_SIZE;
	// Or move Right
	if (sign(v_speed) == 1) // if horizontal speed is positive
		y += TILE_SIZE - 1;
		
	// Stop speed
	v_speed = 0;
	// announce a collision
	_v_collision = true;
}

// Horizontal move commit
y += v_speed;

var _collision = [_h_collision, _v_collision];
return _collision;