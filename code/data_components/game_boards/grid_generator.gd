# horiz_1             vert_1
# | 1 1 | 1 1 |      | 1 0 | 2 0 |
# | 0 0 | 0 0 |      | 1 0 | 2 0 |
# -------------      -------------
# | 2 2 | 2 2 |      | 1 0 | 2 0 |
# | 0 0 | 0 0 |      | 1 0 | 2 0 |

# horiz_2             vert_2
# | 0 0 | 0 0 |      | 0 1 | 0 2 |
# | 1 1 | 1 1 |      | 0 1 | 0 2 |
# -------------      -------------
# | 0 0 | 0 0 |      | 0 1 | 0 2 |
# | 2 2 | 2 2 |      | 0 1 | 0 2 |

# horiz_1_split       vert_1_split
# | 1 1 | 2 2 |      | 1 0 | 3 0 |
# | 0 0 | 0 0 |      | 1 0 | 3 0 |
# -------------      -------------
# | 3 3 | 4 4 |      | 2 0 | 4 0 |
# | 0 0 | 0 0 |      | 2 0 | 4 0 |

# horiz_2_split       vert_2_split
# | 0 0 | 0 0 |      | 0 1 | 0 3 |
# | 1 1 | 2 2 |      | 0 1 | 0 3 |
# -------------      -------------
# | 0 0 | 0 0 |      | 0 2 | 0 4 |
# | 3 3 | 4 4 |      | 0 2 | 0 4 |

# center_horiz        center_vert        center
# | 0 0 | 0 0 |      | 0 0 | 0 0 |      | 0 0 | 0 0 |
# | 0 1 | 1 0 |      | 0 1 | 2 0 |      | 0 1 | 1 0 |
# -------------      -------------      -------------
# | 0 2 | 2 0 |      | 0 1 | 2 0 |      | 0 1 | 1 0 |
# | 0 0 | 0 0 |      | 0 0 | 0 0 |      | 0 0 | 0 0 |

var build_pattern=["center","center_vert","center_horiz","horiz_2_split", 
"vert_2_split","horiz_1_split","vert_1_split","horiz_2","vert_2","horiz_1",
"vert_1"]

func build_antipattern(grid,pattern):
	var usp_gd ="res://code/data_components/game_boards/unit_sector_pattern.gd"
	var sector_pattern= load(usp_gd).new()
	var sector={}
	sector=sector_pattern.get_sectors(pattern)
	var pattern_arr=sector["A"]+sector["B"]+sector["C"]+sector["D"]
	for i in range(15):
		if pattern_arr.find(i)==-1:
			grid = make_sector_sized_room(grid,i,2)
	return grid

# sectors
# | 0  1| 4  5|
# | 2  3| 6  7|
# -------------
# | 8  9|12 13|
# |10 11|14 15|
func build_random_buildings(grid):
	var bld_pattern=build_pattern[randi()%build_pattern.size()]
	return build_room_pattern(grid,bld_pattern)

func build_room_pattern(grid,bld_pattern):	
	match bld_pattern:
		"center":
			grid=make_room(grid,3,12,3)
		"center_vert":
			grid=make_room(grid,3,9,2)
			grid=make_room(grid,6,12,2)
		"center_horiz":
			grid=make_room(grid,3,6,2)
			grid=make_room(grid,9,12,2)
		"horiz_2_split":
			grid=make_room(grid,2,3,2)
			grid=make_room(grid,6,7,2)
			grid=make_room(grid,10,11,2)
			grid=make_room(grid,14,15,2)
		"vert_2_split":
			grid=make_room(grid,1,3,2)
			grid=make_room(grid,9,11,2)
			grid=make_room(grid,5,7,2)
			grid=make_room(grid,13,15,2)
		"horiz_1_split":
			grid=make_room(grid,0,1,2)
			grid=make_room(grid,4,5,2)
			grid=make_room(grid,8,9,2)
			grid=make_room(grid,12,13,2)
		"vert_1_split":
			grid=make_room(grid,0,2,2)
			grid=make_room(grid,8,10,2)
			grid=make_room(grid,4,6,2)
			grid=make_room(grid,12,14,2)
		"horiz_2":
			grid=make_room(grid,2,7,2)
			grid=make_room(grid,10,15,2)
		"vert_2":
			grid=make_room(grid,1,11,2)
			grid=make_room(grid,5,15,2)
		"horiz_1":
			grid=make_room(grid,0,5,2)
			grid=make_room(grid,8,13,2)
		"vert_1":
			grid=make_room(grid,0,10,2)
			grid=make_room(grid,4,14,2)
	return grid

# creates structure that fills map
func build_large_building(grid):
	return make_room(grid,0,15,2)

# creates structure that fills each of 4 quadrant
func build_quadrant_buildings(grid):
	grid = make_room(grid,0,3,2)
	grid = make_room(grid,4,7,2)
	grid = make_room(grid,8,11,2)
	grid = make_room(grid,12,15,2)
	return grid

# creates structure that fills each of 16 sectors
func build_sector_buildings(grid):
	for i in range(15):
		grid = make_sector_sized_room(grid,i,2)
	return grid

# place asphalt and buildings
func build_city(grid):
	pass

# place tree and rock tiles
func build_outdoors(grid):
	pass

func make_sector_sized_room(grid,sector,min_size):
	var room_build=load("res://code/data_components/game_boards/procedural_building.gd").new()
	return room_build.make_structure(grid, sector,sector,min_size)

func make_room(grid,sector_start,sector_end,min_size):
	var room_build=load("res://code/data_components/game_boards/procedural_building.gd").new()
	return room_build.make_structure(grid, sector_start,sector_end,min_size)