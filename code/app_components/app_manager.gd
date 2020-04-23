extends Node

# All game states and gui states are controlled here. Data can be used to select 
# the next game state but at present this is handled by player action or a 
# mission or war being completed. Only load game state when gui is in overlay
# mode. Start menu has no 3d components at present.
var gs_path = "res://code/app_components/game_state/"
var ggs_path = "res://code/app_components/game_gui_state/"
var game_state
var game_gui_state
var gs_script=gs_path+"game_state.gd"
var ggs_script=ggs_path+"game_gui_state.gd"

func init():
	game_state = load(gs_script).new()
	game_gui_state = load(ggs_script).new()
	game_state.init()
	game_gui_state.init()

	
	game_gui_state = load("res://code/app_components/game_state/gs_home.gd").new()


# set game gui functions
func set_game_state(g_state):
	game_state = load(gs_path+g_state+".gd").new()

# string is given to complete the game state path
func set_gui_state(gui_state):
	game_gui_state = load(ggs_path+gui_state+".gd").new()