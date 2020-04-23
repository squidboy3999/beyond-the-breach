var sm_path = "res://code/app_components/game_gui_state/start_menu/"
var cur_start_menu

func init():
	set_sm_first()

func set_sm_choose_world():
	set_sm("sm_choose_world.gd")

func set_sm_first():
	set_sm("sm_first.gd")

func set_sm_host_join():
	set_sm("sm_host_join.gd")

func set_sm_join():
	set_sm("sm_join.gd")

func set_sm_load_hero():
	set_sm("sm_load_hero.gd")

func set_sm_loading():
	set_sm("sm_loading.gd")

func set_sm_load_world():
	set_sm("sm_load_world.gd")

func set_sm_make_world():
	set_sm("sm_make_world.gd")

func set_sm_model_select():
	set_sm("sm_model_select.gd")

func set_sm_multiplayer():
	set_sm("sm_multiplayer.gd")

func set_sm_name_game():
	set_sm("sm_name_game.gd")

func set_sm_name_hero():
	set_sm("sm_name_hero.gd")

func set_sm_screen():
	set_sm("sm_screen.gd")

func set_sm_select_difficulty():
	set_sm("sm_select_difficulty.gd")

func set_sm_select_world():
	set_sm("sm_select_world.gd")

func set_sm_state_select():
	set_sm("sm_state_select.gd")

func set_sm_team_select():
	set_sm("sm_team_select.gd")

func set_sm_type_select():
	set_sm("sm_type_select.gd")

# string is given to complete the overlay path
func set_sm(sm):
	cur_start_menu = load(sm_path+sm).instance()