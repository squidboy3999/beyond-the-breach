# Tiles are 3x3 squares, walls are placed in various patterns inside that 
# square. These patterns are described as an array with either a 0 or a 1 if 
# there is a wall block present on that part of the square.

# 0 1 2
# 3 4 5
# 6 7 8

func get_tile_arr(pattern):
	match pattern:
		"column":
			return [0,0,0,0,1,0,0,0,0]
		"horizontal door":
			return [0,0,0,1,0,1,0,0,0]
		"vertical door":
			return [0,1,0,0,0,0,0,1,0]
		"cross wall":
			return [0,1,0,1,1,1,0,1,0]
		"open west wall":
			return [0,1,0,0,1,1,0,1,0]
		"open east wall":
			return [0,1,0,1,1,0,0,1,0]
		"open north wall":
			return [0,0,0,1,1,1,0,1,0]
		"open south wall":
			return [0,1,0,1,1,1,0,0,0]
		"horizontal wall":
			return [0,0,0,1,1,1,0,0,0]
		"vertical wall":
			return [0,1,0,0,1,0,0,1,0]
		"ne corner wall":
			return [0,1,0,0,1,1,0,0,0]
		"se corner wall":
			return [0,0,0,0,1,1,0,1,0]
		"sw corner wall":
			return [0,0,0,1,1,0,0,1,0]
		"nw corner wall":
			return [0,1,0,1,1,0,0,0,0]
		_:
			return [0,0,0,0,0,0,0,0,0]

func add_two_patterns(pattern1,pattern2):
	if(pattern1=="horizontal door"||pattern2=="horizontal door"):
		return "horizontal door"
	elif(pattern1=="vertical door"||pattern2=="vertical door"):
		return "vertical door"
	else:
		var arr1 = get_tile_arr(pattern1)
		var arr2 = get_tile_arr(pattern2)
		var arr3 = arr1
		for i in range(0,9):
			if(arr1[i]==1||arr2[i]==1):
				arr3[i]=1
		return arr_to_pattern(arr3)

func make_arr_str(arr):
	var arr_str=""
	for i in range(0,9):
		arr_str=arr_str+str(arr[i])
	return arr_str

# includes test to ensure match is reciporcated
func arr_to_pattern(arr):
	var arr_str=make_arr_str(arr)
	var pattern=""
	match arr_str:
		"000010000":
			pattern="column"
		"000101000":
			pattern="horizontal door"
		"010000010":
			pattern="vertical door"
		"010111010":
			pattern="cross wall"
		"010011010":
			pattern="open west wall"
		"010110010":
			pattern="open east wall"
		"000111010":
			pattern="open north wall"
		"010111000":
			pattern="open south wall"
		"000111000":
			pattern="horizontal wall"
		"010010010":
			pattern="vertical wall"
		"010011000":
			pattern="ne corner wall"
		"000011010":
			pattern="se corner wall"
		"000110010":
			pattern="sw corner wall"
		"010110000":
			pattern="nw corner wall"
		_:
			pattern="unknown"
	if(arr_str==make_arr_str(get_tile_arr(pattern))):
		return pattern
	else:
		print(arr_str+" did not match value for pattern")
		return "unknown"