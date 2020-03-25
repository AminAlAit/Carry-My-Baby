baby_colliding = instance_place(x, y, obj_baby);

if (!isMother && keyboard_check_pressed(ord("M")) && !hasBaby) {
	hasBaby = true;

	with (baby_colliding) {
		if (parent_holding != -1) {
			parent_holding.hasBaby = false;
		}
		baby_march.hasBaby = false;
		baby_march = -1;
		parent_holding = other.id;
	}
}


if (isMother && keyboard_check_pressed(ord("X")) && !hasBaby) {
	hasBaby = true;

	with (baby_colliding) {
		if (parent_holding != -1) {
			parent_holding.hasBaby = false;
		}
		baby_march.hasBaby = false;
		baby_march = -1;
		parent_holding = other.id;
	}
}