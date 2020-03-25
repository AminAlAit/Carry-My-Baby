parent_fixing =  instance_place(x, y, obj_parent);

if (!parent_fixing.isMother && !parent_fixing.hasBaby && parent_fixing.hasControl && keyboard_check_pressed(ord("M")) && !gettingFixed){
	gettingFixed = true;
	with (parent_fixing){
		hasControl = false;
	}
	alarm[0] = father_chore_time;
}

if (parent_fixing.isMother && !parent_fixing.hasBaby && parent_fixing.hasControl && keyboard_check_pressed(ord("X")) && !gettingFixed){
	gettingFixed = true;
	with (parent_fixing){
		hasControl = false;
	}
	alarm[0] = mother_chore_time;
}