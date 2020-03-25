var type = menu_option[page];

switch(type){
	case 0: audio_master_gain(argument0); break;
	case 1: audio_group_set_gain(audiogroup_soundEffects, argument0, 0); break;
	case 2: audio_group_set_gain(audiogroup_music, argument0, 0);		 break;
}