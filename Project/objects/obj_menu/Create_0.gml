global.pause	   = true;

global.key_revert	= ord("X");
global.key_enter	= vk_enter;
global.keyleft		= vk_left;
global.keyright		= vk_right;
global.keyup		= vk_up;
global.keydown		= vk_down;
global.key_action	= ord("F");
global.username		= "MAK";

display_set_gui_size(camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]));

enum menu_page {
	main,
	new_game,
	settings,
	audio,
	difficulty,
	graphics,
	controls,
	height
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

#region CREATE MENU PAGES
ds_menu_main = create_menu_page( //page_transfer
	["STORY",			menu_element_type.script_runner,		resume_game], 
	//["SETTINGS",		menu_element_type.page_transfer,		menu_page.settings],
	["EXIT",			menu_element_type.script_runner,		exit_game],
);

ds_new_game = create_menu_page(
	//["GENDER",			menu_element_type.shift,				pick_gender,			0,		["MAK","WOMAK"]],
	//["DIFFICULTY",		menu_element_type.shift,				companion_count,		0,		["Story Mode", "Standard", "Harsh", "Dramatic"]],
	["ACCEPT",			menu_element_type.script_runner,		resume_game],
);

ds_settings = create_menu_page(
	["AUDIO",			menu_element_type.page_transfer,		menu_page.audio],
	["DIFFICULTY",		menu_element_type.page_transfer,		menu_page.difficulty],
	["GRAPHICS",		menu_element_type.page_transfer,		menu_page.graphics],
	//["CONTROLS",		menu_element_type.page_transfer,		menu_page.controls],
	["BACK",			menu_element_type.page_transfer,		menu_page.main],
);
#region Settings
ds_menu_audio = create_menu_page(
	["MASTER",			menu_element_type.slider,				change_volume,			1,		[0,1]],
	//["SOUNDS",			menu_element_type.slider,				change_volume,			1,		[0,1]],
	//["SOUNDS",			menu_element_type.slider,				change_volume,			1,		[0,1]],
	["BACK",			menu_element_type.page_transfer,		menu_page.main],
);

ds_menu_difficulty = create_menu_page(
	["ENEMIES",			menu_element_type.shift,				change_difficulty,		0,		["HARMLESS", "NORMAL", "TOUGH"]],
	["ALLIES",			menu_element_type.shift,				change_difficulty,		0,		["HARMLESS", "NORMAL", "HELPFUL"]],
	["BACK",			menu_element_type.page_transfer,		menu_page.settings],
);

ds_menu_graphics = create_menu_page(
	["RESOLUTION",		menu_element_type.shift,				change_resolution,		0,		["384 x 216", "768 x 432", "1152 x 648", "1536 x 874", "1920 x 1080"]],
	["RESOLUTION",		menu_element_type.toggle,				change_window_mode,		1,		["FULLSCREEN", "WINDOWED"]],
	["BACK",			menu_element_type.page_transfer,		menu_page.settings],
);

ds_menu_controls = create_menu_page(
	["UP",				menu_element_type.input,				"key_up",				vk_up],
	["LEFT",			menu_element_type.input,				"key_left",				vk_left],
	["DOWN",			menu_element_type.input,				"key_right",			vk_right],
	["RIGHT",			menu_element_type.input,				"key_down",				vk_down],
	["ACTION",			menu_element_type.input,				"key_action",			ord("F")],
	["BACK",			menu_element_type.page_transfer,		menu_page.settings],
);
#endregion
#endregion

page		= 0;
menu_pages	= [ds_menu_main, ds_new_game, ds_settings, ds_menu_audio, ds_menu_difficulty, ds_menu_graphics, ds_menu_controls];

var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++;
}

//Play music
menu_music = audio_play_sound(snd_menu_music, 1, true);

button_move = snd_button_switch;

inputting = false;

//global.rem_repeat_counter = 0;

//audio_group_load(audiogroup_music);
//audio_group_load(audiogroup_soundEffects);
//audio_group_load(audiogroup_master);
audio_play_sound(snd_menu, 1, true);


//global.gender = "Gender -1";
//global.compcount = "CompCount -1";


