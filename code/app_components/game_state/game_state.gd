var gs_path = "res://code/app_components/game_state/"
var cur_game_state

func init():
	set_state_home()

# set game state functions

func set_state_museum():
	set_state("gs_museum.gd")

func set_state_arena():
	set_state("gs_arena.gd")

func set_state_home():
	set_state("gs_home.gd")

func set_state_init():
	set_state("gs_init.gd")

func set_state_load():
	set_state("gs_load.gd")

func set_state_map():
	set_state("gs_map.gd")

func set_state_mission():
	set_state("gs_mission.gd")

func set_state_war():
	set_state("gs_war.gd")

# string is given to complete the game state path
func set_state(state):
	cur_game_state = load(gs_path+state).new()
