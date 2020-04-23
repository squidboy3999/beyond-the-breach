extends Node

var app_manager
#var data_manager

func _ready():
	#load some data from global, later save
	var data_manager = load("res://code/data_components/data_manager.gd").new()
	data_manager.init()
	app_manager = load("res://code/app_components/app_manager.gd").new()
	var main_transform = get_node("center").get_transform()
	global.center_transform = main_transform
	global.game_manager = get_node(".")
	global.data_manager=data_manager
	app_manager.init()
	global.load_map=true

func _process(delta):
	# app_manager.update(delta)
	pass


