# world maps store global state information
var map_data ={}
# world name is unique and used for saving and loading the world dat file
var world_name = ""

func load_world(name):
	world_name = name
	var loader=load("res://code/data_components/save_load.gd").instance()
	if(loader.data_exists("world_"+world_name)):
		map_data = loader.load_data("world_"+world_name)
		#for key in loaded_data.data.keys():
		#	map_data[key] = loaded_data[key]
	else:
		# this should only be called in debug
		new_world(8,1)

func save():
	var saver=load("res://code/data_components/save_load.gd").instance()
	saver.save_data(map_data,"world_"+world_name)

# generates a list of controlled territories, this is used by team info when 
# this value is presented to player
func generate_list_rt(team_num):
	var list_rt =""
	for i in range(0,32):
		if(map_data["territory"][i]["ruler"]==team_num):
			if(list_rt!=""):
				list_rt += ", "
			list_rt += map_data["territory"][i]["name"]
	return list_rt

# nations should verify if they have lost or won the game 32 or 0
# winners and losers are numbers for their respective teams
func territory_transfer(winner, loser, ter_num):
	map_data["territory"][ter_num]["ruler"] = winner
	map_data["nation"][winner]["ter_count"] += 1
	map_data["nation"][loser]["ter_count"] -= 1

# new map requires
func new_world(nation_cnt,diff_lvl):
	# 8 is max, there can be 2,4 or 8
	if(nation_cnt!=2||nation_cnt!=4||nation_cnt!=8):
		nation_cnt=8
	map_data["nation_count"] = nation_cnt

	# 0=easy, 1=medium, 2=hard.  Effects enemy strength
	map_data["difficulty"] = diff_lvl


	# mission list is empty at first but can have missions added and removed 
	# over time.

	var ters=load("res://code/data_components/dm_world_map_ter_init.gd").instance()
	# number of nations is used to determine who controls which territory
	map_data["territory"] = ters.get_ter_data(nation_cnt)

	# Nations
	var nation_data=load("res://code/data_components/dm_world_map_nation_helper.gd").instance()
	# Neutral nations cannot own territories, be defeated or have high lords
	map_data["nation"][0]=nation_data.get_nation_data("civilian")
	map_data["nation"][1]=nation_data.get_nation_data("worker")
	map_data["nation"][2]=nation_data.get_nation_data("zombie")
	map_data["nation"][3]=nation_data.get_nation_data("robot")
	map_data["nation"][4]=nation_data.get_nation_data("monster")

	# Non-neutral nations 
	map_data["nation"][5]=nation_data.get_nation_data("eternian_republic")
	map_data["nation"][6]=nation_data.get_nation_data("night_horde")
	if(nation_cnt>2):
		map_data["nation"][7]=nation_data.get_nation_data("initiative")
		map_data["nation"][8]=nation_data.get_nation_data("pantheon")
		if(nation_cnt>4):   	
			map_data["nation"][9]=nation_data.get_nation_data("sentai_clan")
			map_data["nation"][10]=nation_data.get_nation_data("shadow_empire")
			map_data["nation"][11]=nation_data.get_nation_data("united_league")
			map_data["nation"][12]=nation_data.get_nation_data("sith_alliance")

	# Function used to check if nation has any territories
func is_nation_empty(nation):
	var cnt=0
	for i in range(0,32):
		if(map_data["territory"][i]["ruler"]==nation):
			cnt +=1
	if(cnt==0):
		return true
	else:
		return false

	# Belongs in player data, used to set gameboard when player is loaded and
	# moves around the world
	# player_data["current_territory"]["number"]=3
	# player_data["current_territory"]["x_val"]=3
	# player_data["current_territory"]["y_val"]=3

	# The players starting territory is choosen based on a random selection of 
	# territories owned by the nation they belong
func select_random_start(nation):
	var nation_ters =[]
	for i in range(0,32):
		if(map_data["territory"][i]["ruler"]==nation):
			nation_ters=nation_ters+[i]
	if(nation_ters.size()==0):
		print("Nation has no territories, player filtering failed!")
	map_data["start_ter"]=floor(rand_range(0, nation_ters.size()))

func get_team_data(team_num):
	return map_data["nation"][team_num]
