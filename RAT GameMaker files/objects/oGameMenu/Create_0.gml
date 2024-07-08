/// @description Game Menu when player hits 'ESC' in game

global.pause = false;
viewWidth = camera_get_view_width(view_camera[0]);
viewHeight = camera_get_view_height(view_camera[0]);
pos = 0;

display_set_gui_size(viewWidth, viewHeight);

enum MenuPage{

	main, 
	settings, 
	audio,
	window,
	menuPageNum
	
}

enum MenuPageType{

	scriptRunner,
	pageChange,
	slider,
	shift,
	toggle,
	input

}

//Create Menu Pages

OptionsMainMenu = scrCreateMenuPage(

	["Resume",		MenuPageType.scriptRunner,	scrResumeGame],
	["Settings",	MenuPageType.pageChange,	MenuPage.settings],
	["Exit",		MenuPageType.scriptRunner,	scrExitGame]
);
	
	
OptionsSettings = scrCreateMenuPage(

	["Audio",		MenuPageType.pageChange,		MenuPage.audio],
	["Window",		MenuPageType.pageChange,		MenuPage.window],
	["Back",		MenuPageType.pageChange,		MenuPage.main]
);

OptionsAudio = scrCreateMenuPage(

	["Master",		MenuPageType.slider,		scrChangeVolume,	1,	[0,1]],
	["Sound FX",	MenuPageType.slider,		scrChangeVolume,	1,	[0,1]],
	["Music",		MenuPageType.slider,		scrChangeVolume,	1,	[0,1]],
	["Back",		MenuPageType.pageChange,	MenuPage.settings,	1,	[0,1]]
);

OptionsWindow = scrCreateMenuPage(

	["Window Mode",	MenuPageType.toggle,		scrChangeWindow,	1,	["Full Screen", "Windowed"]],
	["Back",		MenuPageType.pageChange,	MenuPage.settings]
	
);

//TODO: make difficulty for timer length

page = 0;
MenuPages = [OptionsMainMenu, OptionsSettings, OptionsAudio, OptionsWindow];

var i = 0, arrayLen = array_length(MenuPages)
repeat(arrayLen){

	menuOptions[i] = 0;
	i++;
}

inputting = false;
audio_group_load(audiogroup_MUSIC);
audio_group_load(audiogroup_SFX);