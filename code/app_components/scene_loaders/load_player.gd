extends Spatial

func _ready():
	#print(global.char_model)
	var player
	if global.char_model=="x-bot":
		#player = preload("res://Models/xbot_split_mixamo/xbot_split_mixamo.tscn").instance()
		player = preload("res://Models/xbot_split_mixamo/xbot_split_mixamo.tscn").instance()
		load_scene(player)
	if global.char_model=="y-bot":
		player = preload("res://Models/ybot_mixamo/ybot_mixamo.tscn").instance()
		load_scene(player)
	if global.char_model=="share-bear":
		player = preload("res://Models/sharebear_carebearsmusicband/sharebear_carebearsmusicband.tscn").instance()
		load_scene(player)
	
func load_scene(player):
	var player_kb = preload("res://scenes/scenes_unit/player_unit_spatial.tscn").instance()
	get_node(".").add_child(player_kb)
	get_node("player_unit").add_child(player)

	player_kb.set_global_transform(global.center_transform)
	player.set_global_transform(player_kb.get_global_transform())
	player.set_rotation(Vector3(0,3.14159,0))

func destory_self():
	get_parent().remove_child(self)


		