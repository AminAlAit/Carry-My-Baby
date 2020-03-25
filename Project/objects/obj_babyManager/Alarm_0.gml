randomize();
pickNeed = choose(0, 1, 2, 3);

timer = 60 * 10;
nextAlarm = 60 * 10;

// bebe ignored, chore added
with (obj_need) {
	if (active && !success) {
		show_debug_message("add chore, baby ignored");
		obj_babyManager.baby_temper++;
		//Debug(obj_babyManager, "Alarm0");
		scr_add_screenshake(20, 20);
		audio_play_sound(CryingChild, 1, false);
		switch (need) {
			case needType.changeDiaper:
				instance_create_layer(baby.x, baby.y, "Instances", obj_poopie);
				break;
				// cry, screen shake
				// break;
		}
	}
	switch (other.pickNeed)
	{
		case 0:
			if (need == needType.sooth) {
				active = true;	
			}
			else {
				active = false;	
			}
			break;
		case 1:
			if (need == needType.feed) {
				active = true;	
			}
			else {
				active = false;	
			}
			break;
		
		case 2:
			if (need == needType.changeDiaper) {
				active = true;	
			}
			else {
				active = false;	
			}
			break;
		case 3:
			other.timer = 0;
			other.nextAlarm = 60 * 5;
			active = false;	
			break;
		
	}
}
alarm[0] = nextAlarm; // 60 * 15;