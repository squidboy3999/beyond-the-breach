var ov_path = "res://code/app_components/game_gui_state/overlay/"
var cur_overlay

func init():
	set_ov_ingame()

func set_ov_global_map():
	set_ov("ov_global_map.gd")

func set_ov_ingame():
	set_ov("ov_ingame.gd")

func set_ov_inventory():
	set_ov("ov_inventory.gd")

func set_ov_load_hero():
	set_ov("ov_load_hero.gd")

func set_ov_load_map():
	set_ov("ov_load_map.gd")

func set_ov_map_info():
	set_ov("ov_map_info.gd")

func set_ov_player_info():
	set_ov("ov_player_info.gd")

func set_ov_save_quit():
	set_ov("ov_save_quit.gd")

# not sure what this one is for
func set_ov_screen():
	set_ov("ov_screen.gd")

func set_ov_team_info():
	set_ov("ov_team_info.gd")

# string is given to complete the overlay path
func set_overlay(ov):
	cur_overlay = load(ov_path+ov).new()