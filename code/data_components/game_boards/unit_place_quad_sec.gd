# quadrants
# |A|B|
# -----
# |C|D|

# sectors
# | 0  1| 4  5|
# | 2  3| 6  7|
# -------------
# | 8  9|12 13|
# |10 11|14 15|

var type_cate=global.unit_types
var debug=false

# grid is given so that units may be placed
# from sector the quadrant is implied
# place type will produce the pattern
# groups is populated with its various unit locations
# groups also store their model info for these units, this is not handled here
func place_units(sec, place_type, group_name,nation):
	var group_info={}
	group_info["name"]=group_name
	var quad=""
	if(sec<4):
		quad="A"
	elif(sec<8):
		quad="B"
	elif(sec<12):
		quad="C"
	else:
		quad="D"
	var template = load("res://code/data_components/game_boards/unit_placement_types.gd").new()
	var place_template={}
	place_template = template.get_placement_type(place_type)
	var sec_offset=load("res://code/data_components/game_boards/sector_offset.gd").new()
	var x_offset=sec_offset.get_xoffset(sec)
	var y_offset=sec_offset.get_yoffset(sec)
	var x_sq=sec_offset.get_sq_xval(quad)
	var y_sq=sec_offset.get_sq_yval(quad)
	group_info["units"] = add_units(place_template,quad,x_offset,y_offset,x_sq,y_sq,group_name,nation)
	# maybe grid is passed by reference then it doesn't need to be returned
	return group_info

# given a spot and location either return the x value or subtract it from 15
func adj_x_spot(x_spot,quadrant):
	var adj_x=x_spot
	if(quadrant=="B"||quadrant=="D"):
		adj_x=15-x_spot
	return adj_x

# given a spot and location either return the y value or subtract it from 15
func adj_y_spot(y_spot,quadrant):
	var adj_y=y_spot
	if(quadrant=="C"||quadrant=="D"):
		adj_y=15-y_spot
	return adj_y

func add_units(template,quad,x_offset,y_offset,x_sq,y_sq,group,nation):
	var group_units={}
	var cnt = 0
	var unit_x_loc=0
	var unit_y_loc=0
	var unit_data=load("res://code/data_components/unit/unit_data.gd").new()
	for i in range(0,8):
		# print(template[type_cate[i]])
		cnt=template[type_cate[i]]["count"]
		group_units[type_cate[i]]={}
		group_units[type_cate[i]]["count"]=cnt
		for j in range(0,cnt):
			if(j==1) && debug:
				print(type_cate[i]+" has 1")
			unit_x_loc=x_offset+adj_x_spot(template[type_cate[i]][j]["x"],quad)
			unit_y_loc=y_offset+adj_y_spot(template[type_cate[i]][j]["y"],quad)
			group_units[type_cate[i]][j]={}
			group_units[type_cate[i]][j]["x"]=unit_x_loc
			group_units[type_cate[i]][j]["y"]=unit_y_loc
			group_units[type_cate[i]][j]["sq_x"]=x_sq
			group_units[type_cate[i]][j]["sq_y"]=y_sq
			group_units[type_cate[i]][j]["unit_data"]={}
			group_units[type_cate[i]][j]["unit_data"]=unit_data.get_generated_unit_data(group,nation,type_cate[i])
	return group_units