var debug=true

# Takes a grid and populates it with wall, floor and door tiles
# The top_left value is the sector to begin in and the bottom_right is the the 
# sector to end in.  
# min size is the smaller width or height of a room.
func make_structure(grid, top_left,bottom_right,min_size):
	# vector2 of x and y location - floats need to be changed to ints 
	var up_left=translate_corner(top_left,true)
	var down_right=translate_corner(bottom_right,false)
	# var box_width = int(down_right.x)-int(upleft.x)
	# var box_height = int(down_right.y)-int(upleft.y)
	# make floor sets all tiles in the builing to floor rather than ground
	if typeof(grid)!=TYPE_DICTIONARY:
		grid={}
	grid = make_floor(grid,up_left,down_right)
	grid = make_walls(grid,up_left,down_right)
	grid = make_building(grid,up_left,down_right,min_size)
	return grid

# sectors
# | 0  1| 4  5|
# | 2  3| 6  7|
# -------------
# | 8  9|12 13|
# |10 11|14 15|
func translate_corner(sec,is_top):
	var sec_offset=load("res://code/data_components/game_boards/sector_offset.gd").new()
	var x =sec_offset.get_xoffset(sec)
	var y =sec_offset.get_xoffset(sec)
	var corner=Vector2(0,0)
	if(!is_top):
		x=x+14
		y=y+14
	else:
		x=x+1
		y=y+1
	corner.y=y
	corner.x=x
	return corner

func make_floor(grid,up_left,down_right):
	var end_x = int(down_right.x)
	var start_x=int(up_left.x)
	var end_y = int(down_right.y)
	var start_y=int(up_left.y)
	for i in range(start_x,end_x+1):
		for j in range(start_y,end_y+1):
			grid[str(i)+","+str(j)]="floor"
	return grid

func make_building(grid,up_left,down_right,min_size):
	# final base case
	if(is_min_room(up_left,down_right,min_size)):
		return grid
	# base case used for smaller rooms
	if(is_min_room(up_left,down_right,min_size*2)):
		return small_case(grid,up_left,down_right,min_size*2)
	var new_x=randi()%(int(down_right.x-up_left.x))+up_left.x
	var new_y=randi()%(int(down_right.y-up_left.y))+up_left.y
	if new_x < int(up_left.x)+min_size:
		new_x=int(up_left.x)+min_size
	if new_y < int(up_left.y)+min_size:
		new_y=int(up_left.y)+min_size
	var up_end= Vector2(float(new_x),float(new_y))
	if(up_end.x>up_left.x and up_end.y>up_left.y):
		grid = make_walls(grid,up_left,up_end)
		grid = make_building(grid,up_left,up_end,min_size)
	if(down_right.x>up_end.x and down_right.y>up_end.y):
		grid = make_walls(grid,up_end,down_right)
		grid = make_building(grid,up_end,down_right,min_size)
	var new_up_left1_x=up_left.x
	var new_up_left1_y=new_y
	var new_down_right1_x=new_x
	var new_down_right1_y=down_right.y
	var up_left1= Vector2(float(new_up_left1_x),float(new_up_left1_y))
	var down_right1= Vector2(float(new_down_right1_x),float(new_down_right1_y))
	if(down_right1.x>up_left1.x and down_right1.y>up_left1.y):
		grid = make_walls(grid,up_left1,down_right1)
		grid = make_building(grid,up_left1,down_right1,min_size)
	var new_up_left2_x=new_x
	var new_up_left2_y=up_left.y
	var new_down_right2_x=down_right.x
	var new_down_right2_y=new_y
	var up_left2= Vector2(float(new_up_left2_x),float(new_up_left2_y))
	var down_right2= Vector2(float(new_down_right2_x),float(new_down_right2_y))
	if(down_right2.x>up_left2.x and down_right2.y>up_left2.y):
		grid = make_walls(grid,up_left2,down_right2)
		grid = make_building(grid,up_left2,down_right2,min_size)
	if debug:
		create_output_file(grid)
	return grid

func create_output_file(grid):
    var file = File.new()
    file.open("user://grid.txt", File.WRITE)
    var row_col=""
    for i in range(0,64):
    	for j in range(0,64):
    		if grid.has(str(i)+","+str(j)):
    			if grid[str(i)+","+str(j)]=="floor" or grid[str(i)+","+str(j)]=="ground":
    				row_col=row_col+"0"
    			elif grid[str(i)+","+str(j)]=="vertical door" or grid[str(i)+","+str(j)]=="horizontal door":
    				row_col=row_col+"0"
    			else:
    				row_col=row_col+"1"
    		else:
    			row_col=row_col+"0"
    	row_col=row_col+"\n"
    file.store_string(row_col)
    file.close()

func is_min_room(up_left,down_right,min_size):
	var box_width = int(down_right.x)-int(up_left.x)
	var box_height = int(down_right.y)-int(up_left.y)
	if(box_width<=min_size||box_height<=min_size):
		return true
	else:
		return false

func is_small_room(up_left,down_right,min_size):
	var box_width = int(down_right.x)-int(up_left.x)
	var box_height = int(down_right.y)-int(up_left.y)
	if(box_width<=min_size&&box_height<=min_size):
		return true
	else:
		return false

# small case triggered when size is less than twice absolute min, this prevents
# trying to split rooms into something smaller than absolute min.
func small_case(grid,up_left,down_right,min_size):
	if(is_small_room(up_left,down_right,min_size)):
		return grid
	elif((int(down_right.x)-int(up_left.x))<=min_size):
		var tmp_start_y=up_left.y
		while(tmp_start_y<(down_right.y-(1.5*min_size))):
			var new_start=Vector2(float(up_left.x),float(tmp_start_y))
			var new_end=Vector2(float(down_right.x),float(tmp_start_y+(.5*min_size)))
			grid=make_walls(grid,new_start,new_end)
			tmp_start_y = tmp_start_y+(.5*min_size)
		return grid
	else:
		var tmp_start_x=up_left.x
		while(tmp_start_x<(down_right.x-(1.5*min_size))):
			var new_start=Vector2(float(tmp_start_x),float(up_left.y))
			var new_end=Vector2(float(tmp_start_x+(.5*min_size)),float(down_right.y))
			grid=make_walls(grid,new_start,new_end)
			tmp_start_x = tmp_start_x+(.5*min_size)
		return grid

func make_walls(grid,new_start,new_end):
	var x_range = int(new_end.x-new_start.x)
	var y_range = int(new_end.y-new_start.y)
	var door1 = (randi()%x_range+1)+int(new_start.x)
	var door2 = (randi()%x_range+1)+int(new_start.x)
	var door3 = (randi()%y_range+1)+int(new_start.y)
	var door4 = (randi()%y_range+1)+int(new_start.y)
	# Build north south walls
	for i in range(int(new_start.x), int(new_end.x)+1):
		var wall_type1="horizontal wall"
		var wall_type2="horizontal wall"
		if(i==int(new_start.x)):
			wall_type1="se corner wall"
			wall_type2="ne corner wall"
		elif(i==int(new_end.x)):
			wall_type1="sw corner wall"
			wall_type2="nw corner wall"
		else:
			if(i==door1&&i==door2):
				wall_type1="horizontal door"
				wall_type2="horizontal door"
			elif(i==door1):
				wall_type1="horizontal door"
			elif(i==door2):
				wall_type2="horizontal door"
		grid[str(i)+","+str(new_start.y)]=set_spot(grid,i,new_start.y,wall_type1)
		grid[str(i)+","+str(new_end.y)]=set_spot(grid,i,new_end.y,wall_type2)
	# Build east west walls
	for i in range(int(new_start.y)+1, int(new_end.y)):
		var wall_type1="vertical wall"
		var wall_type2="vertical wall"
		if(i==door3&&i==door4):
			wall_type1="vertical door"
			wall_type2="vertical door"
		elif(i==door3):
			wall_type1="vertical door"
		elif(i==door4):
			wall_type1="vertical door"
		grid[str(new_start.x)+","+str(i)]=set_spot(grid,new_start.x,i,wall_type1)
		grid[str(new_end.x)+","+str(i)]=set_spot(grid,new_end.x,i,wall_type2)
	return grid

func set_spot(grid,x,y,new_type):
	if(new_type=="horizontal door"||new_type=="vertical door"||typeof(grid)!=TYPE_DICTIONARY):
		return new_type
	elif grid.has(str(x)+","+str(y)):
		var wall_tiles=load("res://code/data_components/game_boards/wall_tiles.gd").new()
		return wall_tiles.add_two_patterns(grid[str(x)+","+str(y)],new_type)
	else:
		return new_type







