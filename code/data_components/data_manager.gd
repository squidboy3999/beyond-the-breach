# Data about the specific world/game being played
var dm_world_map
# DataManagerWorlds - Only saved when new worlds are made, primarily used to store world name list
var dm_worlds
# DataManagerPlayer
var dm_player
# DataManagerPlayerList - stores and loads a list of players that are saved.
var dm_player_list
# DataManagerGameboard
var dm_gameboard
var dm_path = "res://code/data_components/"

func init():
	dm_world_map=load(dm_path+"dm_world_map.gd").new()
	dm_worlds=load(dm_path+"dm_worlds.gd").new()
	dm_player=load(dm_path+"dm_player_data.gd").new()
	dm_player_list=load(dm_path+"dm_players.gd").new()
	dm_gameboard=load(dm_path+"dm_game_board.gd").new()
	# wait for game state to call various loads i.e. list of world or character loads
	load_new_player()
	load_new_gameboard()

func setup():
	pass

func save_update():
	dm_world_map.save()
	dm_player.save()
	dm_gameboard.save()

func load_new_player():
	dm_player.new_player()

func load_new_gameboard():
	dm_gameboard.init_gameboard("nowhere","state_placeholder",0,0,"museum")