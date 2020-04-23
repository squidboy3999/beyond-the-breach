# enemies begin placement in upper left corner, allies begin placement in lower
# right corner. Non-aligned units alternate between upper right and lower left,
# since these are symmetric this should create an even mixture if both nations 
# have strength of 0.  If one of the nations has a strength of 1, then the 
# non-aligned units will be in a single corner.  If both corners are taken by 
# national powers there are no non-aligned units
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

# x pattern - 8 spots
# | 1  -| -  1|
# | -  1| 1  -|
# -------------
# | -  1| 1  -|
# | 1  -| -  1|

# corner pattern - 4 spots
# | 1  -| -  1|
# | -  -| -  -|
# -------------
# | -  -| -  -|
# | 1  -| -  1|

# edges pattern - 12 spots
# | 1  1| 1  1|
# | 1  -| -  1|
# -------------
# | 1  -| -  1|
# | 1  1| 1  1|

# full pattern - 16 spots
# | 1  1| 1  1|
# | 1  1| 1  1|
# -------------
# | 1  1| 1  1|
# | 1  1| 1  1|

# center pattern - 4 spots
# | -  -| -  -|
# | -  1| 1  -|
# -------------
# | -  1| 1  -|
# | -  -| -  -|

# cross pattern - 12 spots
# | -  1| 1  -|
# | 1  1| 1  1|
# -------------
# | 1  1| 1  1|
# | -  1| 1  -|

var pattern_list =["x","corner","edge","full","center","cross"]

func get_rand_pattern():
	return pattern_list[randi()%6]

func pattern_dict(pattern):
	var pattern_dict={}
	pattern_dict["sector"]={}
	match pattern:
		"x":
			pattern_dict["count"]=2
			pattern_dict["sector"]["A"]=[0,3]
			pattern_dict["sector"]["B"]=[5,6]
			pattern_dict["sector"]["C"]=[10,9]
			pattern_dict["sector"]["D"]=[15,12]
		"corner":
			pattern_dict["count"]=1
			pattern_dict["sector"]["A"]=[0]
			pattern_dict["sector"]["B"]=[5]
			pattern_dict["sector"]["C"]=[10]
			pattern_dict["sector"]["D"]=[15]
		"edge":
			pattern_dict["count"]=3
			pattern_dict["sector"]["A"]=[0,1,2]
			pattern_dict["sector"]["B"]=[5,4,7]
			pattern_dict["sector"]["C"]=[10,8,11]
			pattern_dict["sector"]["D"]=[15,13,14]
		"full":
			pattern_dict["count"]=4
			pattern_dict["sector"]["A"]=[0,1,2,3]
			pattern_dict["sector"]["B"]=[5,4,7,6]
			pattern_dict["sector"]["C"]=[10,11,8,9]
			pattern_dict["sector"]["D"]=[15,14,13,12]
		"center":
			pattern_dict["count"]=1
			pattern_dict["sector"]["A"]=[3]
			pattern_dict["sector"]["B"]=[6]
			pattern_dict["sector"]["C"]=[9]
			pattern_dict["sector"]["D"]=[12]
		"cross":
			pattern_dict["count"]=3
			pattern_dict["sector"]["A"]=[1,2,3]
			pattern_dict["sector"]["B"]=[4,7,6]
			pattern_dict["sector"]["C"]=[11,8,9]
			pattern_dict["sector"]["D"]=[14,13,12]
	return pattern_dict

func get_count(pattern):
	var pattern_dict=pattern_dict(pattern)
	return pattern_dict["count"]

func get_sectors(pattern):
	var pattern_dict=pattern_dict(pattern)
	return pattern_dict["sector"]

# this assumes enemy can fill A->B->C or Ally can fill D->C->B
func get_next_quadrant(quadrant):
	match quadrant:
		"A":
			return "B"
		"B":
			return "C"
		"C":
		    return "B"
		"D":
		    return "D"
		_:
			print("get_next_quadrant requires valid quadrant "+quadrant+" is not valid")
