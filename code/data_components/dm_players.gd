# Stores the list of players names 
var player_list ={}

func add_player(player_name):
	var player_cnt = player_list["player_count"]
	player_list[player_cnt] = player_name
	player_list["player_count"] = 1+player_cnt

func remove_player(player_num):
	var player_cnt = player_list["player_count"]
	for i in range(player_num, player_cnt-1):
		player_list[i] = player_list[i+1]
	player_list[player_cnt-1]=""
	player_list["player_count"] = player_cnt-1

func load_player_list():
	var loader=load("res://code/data_components/save_load.gd").instance()
	if(loader.data_exists("player_list")):
		player_list = loader.load_data("player_list")
	else:
		# this should only be called in debug
		pass

func save():
	var saver=load("res://code/data_components/save_load.gd").instance()
	saver.save_data("player_list")