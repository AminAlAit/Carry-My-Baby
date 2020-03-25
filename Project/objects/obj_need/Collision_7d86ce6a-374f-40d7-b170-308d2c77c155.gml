parent_fixing =  instance_place(x, y, obj_parent);

if (need != needType.sooth && !parent_fixing.isMother && parent_fixing.hasBaby && keyboard_check_pressed(ord("M")) && active && !gettingFixed) {
	gettingFixed = true;
	if (need != needType.sooth) {
		with (parent_fixing){
			hasControl = false;
		}
	//	success = false;
	}
	//else {
	//	success = true;
	//}
	
	success = false;
	alarm[0] = father_chore_time;
}

//if (!parent_fixing.isMother && parent_fixing.hasBaby && active && !gettingFixed && need == needType.sooth) {
//	gettingFixed = true;
//	success = true;
//	alarm[0] = father_chore_time;
//}
//
//if (parent_fixing.isMother && parent_fixing.hasBaby && active && !gettingFixed && need == needType.sooth) {
//	gettingFixed = true;
//	success = false;
//	alarm[0] = mother_chore_time;
//}


if (need != needType.sooth && parent_fixing.isMother && parent_fixing.hasBaby && keyboard_check_pressed(ord("X")) && active && !gettingFixed) {
	gettingFixed = true;
	if (need != needType.sooth) {
		with (parent_fixing){
			hasControl = false;
		}
		//success = true;
	}
	//else {
	//	success = false;
	//}
	
	success = true;
	alarm[0] = mother_chore_time;
}