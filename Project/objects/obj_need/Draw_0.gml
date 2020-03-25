if (active) {
	draw_self();
	draw_set_color(c_red);
	switch need {
		case needType.changeDiaper:	
			draw_text(mommyID.x - 15,  mommyID.y - 120, string(obj_babyManager.timer / 60));
			draw_sprite(spr_warning_diaper, 0, mommyID.x, mommyID.y - 150);
			draw_sprite(spr_warning_diaper, 0, x, y - 150);
			break;
			
		case needType.feed:	
			draw_text(mommyID.x - 15,  mommyID.y - 120, string(obj_babyManager.timer / 60));
			draw_sprite(spr_warning_feed, 0, mommyID.x, mommyID.y - 150);
			draw_sprite(spr_warning_feed, 0, x, y - 150);
			break;
			
		case needType.sooth:
			if(baby.baby_march == -1) {
				draw_text(mommyID.x - 15,  mommyID.y - 120, string(obj_babyManager.timer / 60));
				draw_sprite(spr_warning_playTime, 0, mommyID.x, mommyID.y - 150);	
				draw_text(daddyID.x - 15,  daddyID.y - 90, string(obj_babyManager.timer / 60));
				draw_sprite(spr_warning_playTime, 0, daddyID.x, daddyID.y - 120);
				draw_sprite(spr_warning_playTime, 0, x, y - 50);
			}
			break;
	}
}