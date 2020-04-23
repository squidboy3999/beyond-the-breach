var war_place_type=["single lane","triple lane"]
var basic_place_type=["block","doubling","tripling","quadrupling"]

# 7 for now
# city and outdoors are both world map types, cities are typically in the 10x10
# are around the center of the territories world map
# war, mission, arena, city, home, outdoors, museum
# war - player goes to an active battle on territory map
# mission - player selects a mission for territory
# arena - player enters territories arena
# home - player selects the return home 
# city - in territory map, usually centered but can be placed in random ranges
# outdoor - in territory map, area is outside of city
# museum - selected from museum list
# ****future work**** - specialized outdoor scenes: artic,desert, etc
# ****future work**** - specialized city scenes: industrial,commercial,
# residental etc

func build_map_type(type,state_name):
	var total_power=randi()%3
	var enemy_power=randi()%(total_power+1)
	var ally_power= total_power-enemy_power
	var map={}
	map=get_type_data(type,enemy_power,ally_power,state_name)
	return map

# group counts can be varied, these numbers are defaults or starting values.
# game boards will decrement the groups as they are eliminated, in some cases
# new groups can be generated later in gameplay 
# for the gridstarts with a template, customization happens after
# most of the grid has a default tile, these locations can be left null, when 
# the grid is made out of objects the default tile is used if spot is null
# enemy and ally nations must be known ahead of time
func get_type_data(gb_type,max_enemy,max_ally, state_name):
	var type_data={}
	var ally_name=global.nation
	var enemy_name=""
	type_data["groups"]={}
	type_data["objects"]={}
	type_data["grid"]={}
	# determines whether enemy is top left,entire top or all but bottom right
	# 0,1 or 2. enemy_strength + ally_strength <=2
	var enemy_strength=0
	if(max_enemy>0):
		enemy_strength=randi()%max_enemy
	# determines whether ally is bottom right,entire bottom or all but top left
	# 0,1 or 2. enemy_strength + ally_strength <=2 
	var ally_strength=0
	if(max_ally>0):
		ally_strength=randi()%max_ally
	if((ally_strength+enemy_strength) >2):
		enemy_strength=1
		ally_strength=1
	var pattern=load("res://code/data_components/game_boards/unit_sector_pattern.gd").new()
	var grid_maker=load("res://code/data_components/game_boards/grid_generator.gd").new()
	var object_maker=load("res://code/data_components/game_boards/place_objects.gd").new()
	pattern=pattern.get_rand_pattern()
	var enemy_cnt = sector_count(enemy_strength,true,pattern)
	var ally_cnt = sector_count(ally_strength,true,pattern)
	# non-aligned counts, there are 5 na groups
	var na1_cnt = sector_count(enemy_strength,false,pattern)
	var na2_cnt = sector_count(ally_strength,false,pattern)
	var na1_half = na1_cnt/2
	var na2_half = na2_cnt/2
	var place_type
	type_data["groups"]["enemy groups"]= {}
	type_data["groups"]["ally groups"]= {}
	type_data["groups"]["monster groups"]={}
	type_data["groups"]["robot groups"]={}
	type_data["groups"]["zombie groups"]={}
	type_data["groups"]["worker groups"]={}
	type_data["groups"]["civilian groups"]={}
	match gb_type:
		"war":
			enemy_name=get_war_enemy(state_name,ally_name)
			place_type = get_rand_war_place_type()
			type_data["groups"]["enemy groups"]=build_groups("A",place_type,enemy_cnt,enemy_name,pattern,0)
			type_data["groups"]["ally groups"]=build_groups("D",place_type,ally_cnt,ally_name,pattern,0)
			place_type = get_rand_basic_place_type()
			type_data["groups"]["monster groups"]=build_groups("B",place_type,na1_cnt,"monster",pattern,0)
			type_data["groups"]["robot groups"]=build_groups("C",place_type,na2_cnt,"robot",pattern,0)
			type_data["groups"]["zombie groups"]["count"]=0
			type_data["groups"]["worker groups"]["count"]=0
			type_data["groups"]["civilian groups"]["count"]=0
			# type_data["grid"]=grid_maker.build_antipattern(type_data["grid"],pattern)
			# "template_war/core.gd"
			type_data["objects"]=object_maker.even_placement(type_data["grid"],"template_museums/ghostbusters_world.gd",true)
		"mission":
			enemy_name=get_random_enemy(ally_name)
			type_data["grid"]["type"]="mission"
			place_type = get_rand_basic_place_type()
			type_data["groups"]["enemy groups"]= build_groups("A",place_type,enemy_cnt,enemy_name,pattern,0)
			type_data["groups"]["ally groups"]= build_groups("D",place_type,ally_cnt,ally_name,pattern,0)
			type_data["groups"]["monster groups"]["count"]=0
			type_data["groups"]["robot groups"]=build_groups("B",place_type,na1_half,"robot",pattern,0)
			type_data["groups"]["zombie groups"]=build_groups("B",place_type,na1_cnt-na1_half,"zombie",pattern,na1_half)
			type_data["groups"]["worker groups"]=build_groups("C",place_type,na2_half,"worker",pattern,0)
			type_data["groups"]["civilian groups"]=build_groups("C",place_type,na2_cnt-na2_half,"civilian",pattern,na2_half)
			type_data["grid"]=grid_maker.build_random_buildings(type_data["grid"])
			type_data["objects"]=object_maker.even_placement(type_data["grid"],"template_mission/core.gd",true)
		"arena":
			enemy_name=get_random_enemy(ally_name)
			place_type = get_rand_basic_place_type()
			# arena maps should have low ally strength max i.e 0
			type_data["groups"]["enemy groups"]=build_groups("A",place_type,enemy_cnt,enemy_name,pattern,0)
			type_data["groups"]["ally groups"]=build_groups("D",place_type,ally_cnt,ally_name,pattern,0)
			type_data["groups"]["monster groups"]=build_groups("B",place_type,na1_half,"monster",pattern,0)
			type_data["groups"]["robot groups"]=build_groups("B",place_type,na1_cnt-na1_half,"robot",pattern,na1_half)
			type_data["groups"]["zombie groups"]=build_groups("C",place_type,na2_cnt,"zombie",pattern,0)
			type_data["groups"]["worker groups"]["count"]=0
			type_data["groups"]["civilian groups"]["count"]=0
			# for now arena has no buildings
			type_data["objects"]=object_maker.even_placement(type_data["grid"],"template_arena/core.gd",false)
		"home":
			type_data["groups"]["enemy groups"]["count"]=0
			type_data["groups"]["ally groups"]["count"]=0
			type_data["groups"]["monster groups"]["count"]=0
			type_data["groups"]["robot groups"]["count"]=0
			type_data["groups"]["zombie groups"]["count"]=0
			# **** future work **** home may have servents
			type_data["groups"]["worker groups"]["count"]=0
			type_data["groups"]["civilian groups"]["count"]=0
			type_data["grid"]=grid_maker.build_large_building(type_data["grid"])
			type_data["objects"]=object_maker.even_placement(type_data["grid"],"template_home/core.gd",false)
		"city":
			enemy_name=get_near_enemy(state_name,ally_name)
			place_type = get_rand_basic_place_type()
			# if home territory
			# enemy should be maxed out at 0 strength, ally should have bonus
			type_data["groups"]["enemy groups"]=build_groups("A",place_type,enemy_cnt,enemy_name,pattern,0)
			type_data["groups"]["ally groups"]=build_groups("D",place_type,ally_cnt,ally_name,pattern,0)
			type_data["groups"]["monster groups"]["count"]=0
			type_data["groups"]["robot groups"]=build_groups("B",place_type,na1_half/2,"robot",pattern,0)
			type_data["groups"]["zombie groups"]=build_groups("B",place_type,na1_half-(na1_half/2),"zombie",pattern,na1_half/2)
			type_data["groups"]["worker groups"]=build_groups("B",place_type,na1_cnt-na1_half,"worker",pattern,na1_half)
			type_data["groups"]["civilian groups"]=build_groups("C",place_type,na2_cnt,"civilian",pattern,0)
			type_data["grid"]=grid_maker.build_city(type_data["grid"])
			type_data["objects"]=object_maker.even_placement(type_data["grid"],"template_city/core.gd",true)
		"outdoor":
			enemy_name=get_near_enemy(state_name,ally_name)
			place_type = get_rand_basic_place_type()
			type_data["groups"]["enemy groups"]=build_groups("A",place_type,enemy_cnt,enemy_name,pattern,0)
			type_data["groups"]["ally groups"]=build_groups("D",place_type,ally_cnt,ally_name,pattern,0)
			type_data["groups"]["monster groups"]=build_groups("B",place_type,na1_half/2,"monster",pattern,0)
			type_data["groups"]["robot groups"]=build_groups("B",place_type,na1_half-(na1_half/2),"robot",pattern,na1_half/2)
			type_data["groups"]["zombie groups"]=build_groups("C",place_type,na2_cnt,"zombie",pattern,0)
			type_data["groups"]["worker groups"]=build_groups("B",place_type,na1_half-(na1_half/2),"worker",pattern,na1_half)
			type_data["groups"]["civilian groups"]=build_groups("B",place_type,(na1_cnt-na1_half)-(na1_half/2),"civilian",pattern,na1_cnt-(na1_half/2))
			type_data["grid"]=grid_maker.build_city(type_data["grid"])
			type_data["objects"]=object_maker.even_placement(type_data["grid"],"template_outdoor/core.gd",true)
		"museum":
			place_type = get_rand_basic_place_type()
			type_data["groups"]["enemy groups"]["count"]=0
			type_data["groups"]["ally groups"]["count"]=0
			type_data["groups"]["monster groups"]["count"]=0
			type_data["groups"]["robot groups"]["count"]=0
			type_data["groups"]["zombie groups"]["count"]=0
			type_data["groups"]["worker groups"]=build_groups("B",place_type,na1_cnt,"worker",pattern,0)
			type_data["groups"]["civilian groups"]=build_groups("C",place_type,na2_cnt,"civilian",pattern,0)
			type_data["grid"]=grid_maker.build_large_building(type_data["grid"])
			type_data["objects"]=object_maker.even_placement(type_data["grid"],"template_museums/transformers_earthwars.gd",false)
			#type_data["objects"]=object_maker.even_placement(type_data["grid"],"template_museums/ghostbusters_world.gd",false)
	return type_data

# the strength is of the adjactent nation so if that is >0 then the non-aligned
# nation has 0 sectors 
func sector_count(strength,is_nation,pattern):
	if(!is_nation && strength>0):
		return 0
	else:
		var count = load("res://code/data_components/game_boards/unit_sector_pattern.gd").new()
		count=count.get_count(pattern)
		if(is_nation):
			count*(strength+1)
		return count

func get_rand_war_place_type():
	return war_place_type[randi()%war_place_type.size()]

func get_rand_basic_place_type():
	return basic_place_type[randi()%basic_place_type.size()]

# **pattern is used for determining which sectors to place units
# **nation_name is used to grab a list of groups to select from
# **group_cnt will grab a random group from the list for each sector
# **place_type is used to determine which pattern unit_placement_types uses
# **quadrant is used to simply for starting the placement in sectors
# quadrants typically can go A->B->C or D->C->B depending on the enemy or allies
# strength, at present only some map types will have non-aligned-nation groups
# in A or D quadrants
# some of the unit placement patterns might be randomized, for example
# doubling, tripling or quadrupling patterns etc.
# **cnt_pos is used to track where placement left off if quadrant is shared as 
# in the cause on non-aligned-nations groups
func build_groups(quadrant,place_type,group_cnt,nation_name,pattern,cnt_pos):
	var group_dict={}
	group_dict["count"]=group_cnt
	group_dict["nation name"]=nation_name
	var sec_ord=[]
	var sector ={}
	var sect_build=load("res://code/data_components/game_boards/unit_sector_pattern.gd").new()
	var group_generator=load("res://code/data_components/nation_templates/nation_groups.gd").new()
	var unit_place=load("res://code/data_components/game_boards/unit_place_quad_sec.gd").new()
	sector=sect_build.get_sectors(pattern)
	sec_ord=sector[quadrant]
	var sec_num=0
	var group=""
	var cur_cnt_pos=cnt_pos
	var cnt_offset=0
	for i in range(0,group_cnt):
		group = group_generator.get_rand_group(nation_name)
		cur_cnt_pos=i+cur_cnt_pos-cnt_offset
		if((cur_cnt_pos)<sec_ord.size()):
			sec_num=sec_ord[cur_cnt_pos]
		else:
			sec_ord=sector[sect_build.get_next_quadrant(quadrant)]
			cnt_offset=cur_cnt_pos+cnt_offset
			cur_cnt_pos=0
			sec_num=sec_ord[cur_cnt_pos]
		group_dict[i]=unit_place.place_units(sec_num, place_type, group,nation_name)
	return group_dict


func get_near_enemy(state_name,ally_name):
	print("get_near_enemy just returns night horde for now")
	return "night_horde"

func get_random_enemy(ally_name):
	print("get_random_enemy just returns night horde for now")
	return "night_horde"

# if war state changes to non war state while map is being generated select a 
# random enemy since the outcome no longer affects state control.
func get_war_enemy(state_name,ally_name):
	print("get_war_enemy just returns night horde for now")
	return "night_horde"