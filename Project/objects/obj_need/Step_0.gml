if(gettingFixed && active) {
	
	if (need == needType.changeDiaper){
		effect_create_above(ef_spark, bbox_left + random(sprite_width), bbox_top + random(sprite_height), choose(0, 1), merge_colour(c_white, c_yellow, random(1)));
		
		if (!soundPlayed) {
			audio_play_sound(DiaperChange, 1, false);
			soundPlayed = true;
		}
	}
	sooth_star_frequency++;
	if (need == needType.sooth && sooth_star_frequency == 4) {
		effect_create_above(ef_star, x - 32 + random(64), y - 32 + random(64), choose(0), c_yellow);
		sooth_star_frequency = 0;
		
	}

		
	if (need == needType.feed) {
		effect_create_below(ef_smokeup, x, y, choose(0, 1, 2), c_white);
		if (!soundPlayed) {
			audio_play_sound(BabyEat, 1, false);
			soundPlayed = true;
		}	
	}
}

if (active && need == needType.sooth) {
	x = baby.x;
	y = baby.y;
	
	if (baby.baby_march != -1) {
		success = true;	
		sooth_star_frequency++;
		if (sooth_star_frequency == 4) {
			effect_create_above(ef_star, x - 32 + random(64), y - 32 + random(64), choose(0), c_yellow);
			sooth_star_frequency = 0;
		}
	}
}


	
