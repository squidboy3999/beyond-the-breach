var templates_path="res://code/data_components/game_boards/"

# template has a count of objects for inside and outside as well as the tscn 
# names for those objects.  Each object list has is both the object name(path) 
# and hp for the objects. Template name includes the parent directory and the 
# name of the gd script, for example: "template_museums/ghostbusters_world.gd"
# is random allows objects to be placed around a location, rather than an exact 
# location.
func even_placement(grid,template_name,is_random):
	# disable objects with this
	if(false):
		var noobj={}
		noobj["total"]=0
		return noobj
	var template=load(templates_path+template_name).new()
	var objects={}
	var obj_cnt=0
	var inside_cnt=template.inside_objects.size()-1
	var outside_cnt=template.outside_objects.size()-1
	var saturation=template.saturation
	var increment=60/template.level_object_count
	for i in range(2,62,increment):
		for j in range(2,62,increment):
			var x_offset=0
			var y_offset=0
			if(is_random):
				if((i+increment)<62):
					x_offset=randi()%increment
				if((j+increment)<62):
					y_offset=randi()%increment
			var dir="NW"
			if(i<32&&j<32):
				dir="NW"
			elif(i>31&&j<32):
				dir="NE"
			elif(i<32&&j>31):
				dir="SW"
			else:
				dir="SE"
			if(grid.has(str(i)+","+str(j))):
				if(grid[str(i)+","+str(j)]!="ground"):
					for k in range(0,saturation):
						objects[obj_cnt]=make_object(dir,k,i+x_offset,j+y_offset,template.inside_objects[inside_cnt])
						obj_cnt=obj_cnt+1
						inside_cnt = inside_cnt-1
						if(inside_cnt<0):
							inside_cnt=template.inside_objects.size()-1
				else:
					for k in range(0,saturation):
						objects[obj_cnt]=make_object(dir,k,i+x_offset,j+y_offset,template.outside_objects[outside_cnt])
						obj_cnt=obj_cnt+1
						outside_cnt = outside_cnt-1
						if(outside_cnt<0):
							outside_cnt=template.outside_objects.size()-1
			else:
				for k in range(0,saturation):
					objects[obj_cnt]=make_object(dir,k,i+x_offset,j+y_offset,template.outside_objects[outside_cnt])
					obj_cnt=obj_cnt+1
					outside_cnt = outside_cnt-1
					if(outside_cnt<0):
						outside_cnt=template.outside_objects.size()-1
	objects["total"]=obj_cnt
	return objects


# dictionary describing object - for now these objects are only 1x1 squares or 
# 1/9 of a tile. Direction (NW,NE,SW,SE) determine meaning of pos (A,B,C)
func make_object(direction,pos_num,x_loc,y_loc,arr_item):
	var object={}
	var pos="A"
	match pos_num:
		0:
			pos="A"
		1: 
			pos="B"
		2:	
			pos="C"
		_:
			pos="A"
	# name might be extracted from model path
	object["model_path"]=arr_item[0]
	object["hp"]=arr_item[1]
	object["x"]=x_loc
	object["y"]=y_loc
	object["square"]=get_square(direction,pos)
	return object


# might be outsourced to another script if similar method needed elsewhere
# ex: NW tile    NE tile    SW tile    SE tile
#     A X B      B X A      C X X      X X C
#     X X X      X X X      X X X      X X X
#     C X X      X X C      A X B      B X A
func get_square(direction,pos):
	var a_square=0
	var b_square=0
	var c_square=0
	match direction:
		"NW":
			a_square=0
			b_square=2
			c_square=6
		"NE":
			a_square=2
			b_square=0
			c_square=8
		"SW":
			a_square=6
			b_square=8
			c_square=0
		"SE":
			a_square=8
			b_square=6
			c_square=2
		_:
			print("illegal direction used for square")
	match pos:
		"A":
			return a_square
		"B":
			return b_square
		"C":
			return c_square
		_:
			print("invalid pos - default is A")
			return a_square
