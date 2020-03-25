if (parent_fixing != -1)
	with (parent_fixing){
			hasControl = true;
	}
parent_fixing = -1;
gettingFixed = false;
active = false;

// Wrong parent
if (!success) {
	show_debug_message("add chore, unfit parent");
	obj_babyManager.baby_temper++;
	obj_babyManager.baby_messes++;
	switch need {
		case needType.changeDiaper:
			instance_create_layer(baby.x, baby.y, "Instances", obj_poopie);
			break;
		case needType.feed:
			instance_create_layer(baby.x, baby.y, "Instances", obj_spilledCereal);
			break;
	}
}

success = false;
soundPlayed = false;