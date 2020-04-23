extends Node

var ggs_path = "res://code/app_components/game_gui_state/"
const p_loader_path= "res://scenes/loaders/load_player.tscn"
const map_loader_path= "res://scenes/loaders/load_map.tscn"
var ov_path = "overlay/overlay.gd"
var sm_path = "start_menu/start_menu.gd"
var is_overlay = false
var cur_game_gui_state
# probably have a collection of loaders eventually
var player_loader
var map_loader

func init():
	set_ggs_type(false)
	create_player_loader()
	create_map_loader()

func is_ov():
	return is_overlay

func set_ggs_type(is_ov):
	is_overlay = is_ov
	if(is_overlay):
		cur_game_gui_state = load(ggs_path+ov_path).new()
	else:
		cur_game_gui_state = load(ggs_path+sm_path).new()

func create_player_loader():
	player_loader=preload(p_loader_path).instance()
	global.game_manager.add_child(player_loader)
	#player_loader.init()

func create_map_loader():
	map_loader=preload(map_loader_path).instance()
	global.game_manager.add_child(map_loader)

func destroy_player():
	if player_loader!=null:
		player_loader.destroy_self()
	else:
		print("player loader is null")
