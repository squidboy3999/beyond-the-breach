# objects can be pulled in via a theme, level may have more than one theme
func get_rand_object(theme):
	var object ={}
	object["width"]=randi()%4+1
	object["depth"]=randi()%4+1
	object["hp"]=randi()%1000000+1
	# model string doubles as object name, though pretty print may need to 
	# remove underscores
	object["model string"]=get_model_str(object["width"],object["depth"], theme)
	return object

# objects are rotated to fit by width or depth
func get_model_str(width,depth,theme)
	var size = str(width)+"X"+str(depth)
	var model_str=""
	var prefix = "res://code/data_components/objects/theme_"
	var obj_set=load(prefix+theme+".gd").instance()
	match size:
		"1X1":
			model_str=obj_set.get_1x1()
		"1X2":
			model_str=obj_set.get_1x2()
		"1X3":
			model_str=obj_set.get_1x3()
		"1X4":
			model_str=obj_set.get_1x4()
		"2X2":
			model_str=obj_set.get_2x2()
		"2X3":
			model_str=obj_set.get_2x3()
		"2X4":
			model_str=obj_set.get_2x4()
		"3X3":
			model_str=obj_set.get_3x3()
		"3X4":
			model_str=obj_set.get_3x4()
		"4X4":
			model_str=obj_set.get_4x4()
		_:
			print("width and depth values incorrect for objects!")
	return model_str
