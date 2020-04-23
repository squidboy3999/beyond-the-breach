# Stores the list of world (games seperate from player data) names 
var world_list ={}

func add_world(world_name):
	var world_cnt = world_list["world_count"]
	world_list[world_cnt] = world_name
	world_list["world_count"] = 1+world_cnt

func remove_world(world_num):
	var world_cnt = world_list["world_count"]
	for i in range(world_num, world_cnt-1):
		world_list[i] = world_list[i+1]
	world_list[world_cnt-1]=""
	world_list["world_count"] = world_cnt-1

func load_world_list():
	var loader=load("res://code/data_components/save_load.gd").instance()
	if(loader.data_exists("world_list")):
		world_list = loader.load_data("world_list")
	else:
		# this should only be called in debug
		pass

func save():
	var saver=load("res://code/data_components/save_load.gd").instance()
	saver.save_data("world_list")