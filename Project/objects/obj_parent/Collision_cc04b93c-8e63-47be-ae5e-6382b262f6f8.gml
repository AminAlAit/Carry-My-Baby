baby_march = instance_place(x, y, obj_babyMarch);

// Father
if (!isMother && keyboard_check_pressed(ord("M")) && hasBaby && !baby_march.hasBaby) {
	with (baby_march) {
		baby = other.baby_colliding;
		hasBaby = true;
	}
	with (baby_colliding) {
		parent_holding = -1;
		baby_march = other.baby_march;
	}
	baby_colliding = -1;
	hasBaby = false;
}

// Mother
if (isMother && keyboard_check_pressed(ord("X")) && hasBaby && !baby_march.hasBaby) {
	with (baby_march) {
		baby = other.baby_colliding;
		hasBaby = true;
	}
	with (baby_colliding) {
		parent_holding = -1;
		baby_march = other.baby_march;
	}
	baby_colliding = -1;
	hasBaby = false;
}