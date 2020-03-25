// CHILD PROTECTION SERVICE
var _x			 = 1120;
var _y			 = 1024;
var _width		 = 64;
var _height		 = -896;
var _cps_percent = cps_timer / overall_time;
//draw_rectangle_color(_x, _y, _x + _width, _y + _height, c_green, c_green, c_red, c_red, true);
draw_rectangle_color(_x, _y, _x + _width, _y + _height * (_cps_percent), c_green, c_green, c_red, c_red, false);

if(cps_timer > 0) 
	cps_timer --;
else {
	#region Check for Win or Lose
	
	if (obj_babyManager.baby_messes == 0 && obj_choreManager.chores == 0) {
		// win
		audio_play_sound(snd_knock, 1, 0);
		if(alarm[0] <= 0) alarm[0] = FRAME_RATE * 1;
		
	}
	else {
		audio_play_sound(snd_knock, 1, 0);
		if(alarm[1] <= 0) alarm[1] = FRAME_RATE * 1;
	}
	#endregion
}

switch(obj_babyManager.baby_temper){
	case 1:
		//obj_baby_temper_meter.direction = 123;
		inst.image_speed = 0;
		inst.image_index = 0;
	break;
	case 2:
		//obj_baby_temper_meter.direction = 57;
		inst.image_speed = 0;
		inst.image_index = 1;
	break;
	case 3:
		var _inst = instance_create_layer(528, 1024, "BabyNeeds", obj_penalty);
		cps_timer -= FRAME_RATE * 20;
		//obj_baby_temper_meter.direction = 57;
		inst.image_speed = 0;
		inst.image_index = 1;
		obj_babyManager.baby_temper = 1;
	break;
	case 4:
		
	break;
}
	

//draw_text(10, 10, cps_timer);
//draw_text(10, 40, _y - _height * (_cps_percent));