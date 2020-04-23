# quadrants
# |A|B|
# -----
# |C|D|

# tower takes up a single tile, so makes the 3x3 squares impassable while it 
# stands
# Base takes up 4 tiles in a 2x2 pattern, this makes all the squares in these 
# tiles impassable while it stands

# Quadrant determines which 4 tiles to set.
# is_destroyed is boolean, if not make sqaures impassable, else passable
func account_for_base_grid(x,y,grid,quadrant,is_destroyed):
	var x1=x
	var x2=y
	var sq_state=""
	match:
		"A":
			x1=x+1
			y1=y+1
		"B":
			x1=x-1
			y1=y+1
		"C":
			x1=x+1
			y1=y-1
		"D":
			x1=x-1
			y1=y-1
	if is_destroyed:
		sq_state="passable"
	else:
		sq_state="impassable"
	grid=set_square_states(x,y,grid,sq_state)
	grid=set_square_states(x1,y,grid,sq_state)
	grid=set_square_states(x,y1,grid,sq_state)
	grid=set_square_states(x1,y1,grid,sq_state)
	return grid

func account_for_tower_grid(x,y,grid,is_destroyed):
    if is_destroyed:
    	return set_square_states(x,y,grid,"passable")
	else:
		return set_square_states(x,y,grid,"impassable")

func set_square_states(x,y,grid,sq_state):
	for i in range(3):
		for j in range(3):
		    grid[str(x)+","+str(y)]["square"][i][j]=sq_state
	return grid
