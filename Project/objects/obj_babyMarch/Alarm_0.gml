if (hasBaby) {
	randomize();
	_direction = irandom_range(0, 360); // choose (0, 90, 180, 270);
	_speed	   = 6;
	alarm[0]   = choose(10, 60);
}
else {
	_speed	 = 0;	
	alarm[0] = choose(10, 60);
}