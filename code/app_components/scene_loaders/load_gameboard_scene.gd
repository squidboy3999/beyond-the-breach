extends Spatial

func _ready():
	pass

func _process(delta):
	if global.load_map:
		load_grid()
		load_objects()
		load_units()
		global.load_map=false

func load_grid():
	var grid=global.data_manager.dm_gameboard.gameboard_data["map"]["grid"]
	var style="core"
	for i in range(-2,66):
		for j in range(-2,66):
			if grid.has(str(i)+","+str(j)):
				create_grid_object(grid[str(i)+","+str(j)],i,j,style)
			else:
				create_grid_object("ground",i,j,style)

# style need to be added at some point
func create_grid_object(tile,x,y,style):
	if tile=="ground":
		load_tile("ground",x,y,style)
	else:
		load_tile("floor",x,y,style)
		load_roof(x,y,style)
		if tile!="floor":
			load_wall(tile,x,y,style)

func load_wall(tile,x,y,style):
	var wall_patterns=load("res://code/data_components/game_boards/wall_tiles.gd").new()
	var wall_spots=wall_patterns.get_tile_arr(tile)
	for i in range(0,3):
		for j in range(0,3):
			# for now single block type is supported
			if wall_spots[i+3*j]==1:
				for k in range(0,2):
					load_block(x,y,i,j,k,style)

func load_roof(x,y,style):
	for i in range(0,3):
		for j in range(0,3):
			# for now single block type is supported
			load_block(x,y,i,j,2,style)

func load_tile(tile,x,y,style):
	var tile_obj = load("res://scenes/scenes_tile/"+style+"/"+tile+".tscn").instance()
	get_node(".").add_child(tile_obj)
	var x_vec=x*global.tile_multiplier+global.tile_offset
	var y_vec=y*global.tile_multiplier+global.tile_offset
	var z_vec=-0.3
	var tile_transform=Transform(global.center_transform.basis,Vector3(x_vec,z_vec,y_vec))
	tile_obj.set_global_transform(tile_transform)
	#tile_obj.set_rotation(Vector3(0,3.14159,0))

func load_block(x,y,sq_x,sq_y,sq_z,style,block="core_001"):
	var block_obj = load("res://scenes/scenes_block/"+style+"/"+block+".tscn").instance()
	get_node(".").add_child(block_obj)
	var x_vec=x*global.tile_multiplier+global.tile_offset+sq_x*global.square_multiplier+global.square_offset
	var y_vec=y*global.tile_multiplier+global.tile_offset+sq_y*global.square_multiplier+global.square_offset
	var z_vec=-0.3+sq_z*global.square_multiplier
	var block_transform=Transform(global.center_transform.basis,Vector3(x_vec,z_vec,y_vec))
	block_obj.set_global_transform(block_transform)
	#block_obj.set_rotation(Vector3(0,3.14159,0))
	

# dictionary that contains information about units are loaded.  This includes
# model path and unit location, each unit will have a corresponding id that 
# connects to the units stats in the gameboard dictionary. In this way, actions
# hp, stats etc are in a single place even though the model object will be 
# moving around the scene.
func load_units():
	var groups=global.data_manager.dm_gameboard.gameboard_data["map"]["groups"]
	for group in global.groups:
		var cur_group=groups[group]
		for i in range(0,cur_group["count"]):
			for type in global.unit_types:
				#print(cur_group[i])
				var cur_type=cur_group[i]["units"][type]
				var unit_cnt=cur_type["count"]
				for k in range(0,unit_cnt):
					var x_spot=cur_type[k]["x"]
					var x_sq=cur_type[k]["sq_x"]
					var y_spot=cur_type[k]["y"]
					var y_sq=cur_type[k]["sq_y"]
					var x_vec=unit_place_help(x_spot,x_sq)
					var y_vec=unit_place_help(y_spot,y_sq)
					var z_vec=0
					unit_load_help(x_vec,z_vec,y_vec,cur_type[k]["unit_data"]["model dict"])
					


func unit_place_help(tile_val,sq_val):
	var tile_spot=tile_val*global.tile_multiplier+global.tile_offset
	var sq_spot=sq_val*global.square_multiplier+global.square_offset
	return tile_spot+sq_spot

func unit_load_help(x_vec,z_vec,y_vec,model_dict):
	var skeleton_path="res://Models/xbot_split_mixamo/"+model_dict["body"]["skeleton"]+".tscn"
	var model_obj = load(skeleton_path).instance()
	load_bot_scene(model_obj,x_vec,y_vec,z_vec,model_dict)
	

func load_bot_scene(bot,x_vec,y_vec,z_vec,model_dict):
	#print ("----------- BEFORE LOAD BOT SCENE --------------")
	#print_tree()
	var bot_kb = load("res://scenes/scenes_unit/bot_unit_spatial.tscn").instance()
	get_node(".").add_child(bot_kb)
	var new_name="bot_unit-"+str(x_vec)+","+str(y_vec)
	get_node("bot_unit").add_child(bot)
	get_node("bot_unit").set_name(new_name)
	var model_transform=Transform(global.center_transform.basis,Vector3(x_vec,z_vec,y_vec))
	bot.set_global_transform(model_transform)
	#print ("----------- AFTER LOAD BOT SCENE --------------")
	#print_tree()
	bot_kb.init(model_dict)
	

# objects are loaded with an id/count value, this references the id value in the
# gameboard dictionary, this will track the hp of the object, when at zero 
# remove the object and set value to null in dictionary.
func load_objects():
	var objects=global.data_manager.dm_gameboard.gameboard_data["map"]["objects"]
	print(objects["total"])
	for i in range(0,objects["total"]):
		var model_path="res://Models/000_basic_static_objects/"+objects[i]["model_path"]+".tscn"
		var model_obj = load(model_path).instance()
		get_node(".").add_child(model_obj)
		var x_vec=object_place_help(objects[i]["x"],"x",objects[i]["square"])
		var y_vec=object_place_help(objects[i]["y"],"y",objects[i]["square"])
		var z_vec=0
		var model_transform=Transform(global.center_transform.basis,Vector3(x_vec,z_vec,y_vec))
		model_obj.set_global_transform(model_transform)

func object_place_help(val,x_or_y,spot):
	var sq_val=0
	if (x_or_y=="x"):
		if spot==0 or spot==3 or spot==6:
			sq_val=0
		elif spot==1 or spot==4 or spot==7:
			sq_val=1
		else:
			sq_val=2
	else:
		if spot==0 or spot==1 or spot==2:
			sq_val=0
		elif spot==3 or spot==4 or spot==5:
			sq_val=1
		else:
			sq_val=2
	return val*global.tile_multiplier+global.tile_offset+sq_val*global.square_multiplier+global.square_offset