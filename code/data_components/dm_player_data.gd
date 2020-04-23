# player data store global state information
var player_data ={}

# player name is unique and used for saving and loading the player dat file
func load_player(name):
	player_data["name"] = name
	var loader=load("res://code/data_components/save_load.gd").new()
	if(loader.data_exists("player_"+name)):
		player_data = loader.load_data("player_"+name)
	else:
		# this should only be called in debug
		# new_player(name,basic_archetype,generic_head,generic_body)
		pass
		

func save():
	var saver=load("res://code/data_components/save_load.gd").new()
	saver.save_data(player_data,"player_"+player_data["name"])

# the head is a path to a specific head scene loaded, the body template is a
# path to code for all the scenes for each of the body parts that make the 
# selected body.
func new_player():
	player_data["name"] = global.get_playername()
	player_data["kill facts"]=new_kill_facts()
	player_data["unit data"]=new_user_data()
	player_data["inventory"]=new_inventory()

func new_kill_facts():
	var kill_facts = {}
	kill_facts["total kill count"]=0
	# battle kills are reset when new battle beings but kept 
	# during and after battle
	kill_facts["battle kill count"]=0
	kill_facts["strongest foe name"]=""
	kill_facts["strongest foe level"]=0
	kill_facts["strongest foe rank"]=0
	kill_facts["worker kills"]=0
	kill_facts["civilian kills"]=0
	kill_facts["zombie kills"]=0
	kill_facts["monster kills"]=0
	kill_facts["robot kills"]=0
	kill_facts["soldier kills"]=0
	kill_facts["lt kills"]=0
	kill_facts["hunter kills"]=0
	kill_facts["guardian kills"]=0
	kill_facts["bonus kills"]=0
	kill_facts["tower kills"]=0
	kill_facts["titan kills"]=0
	kill_facts["base kills"]=0
	return kill_facts

func new_user_data():
	var user_data = {}
	var make_user_data=load("res://code/data_components/unit/unit_data.gd").new()
	user_data=make_user_data.get_new_data(global.get_nation(),"player", global.get_archetype(),"guardian")
	return user_data

func new_inventory():
	var inventory={}
	var item_make=load("res://code/data_components/items/item.gd").new()
	for i in range(0,30):
		inventory[i]=item_make.get_empty_item()
	return inventory

func add_xp(xp_pnts):
	player_data["unit data"]["statistics"]["xp"] +=xp_pnts
	var cur_xp = player_data["unit data"]["statistics"]["xp"]
	var nl_xp = player_data["unit data"]["statistics"]["next level xp"]
	if(cur_xp>=nl_xp):
		var make_user_data=load("res://code/data_components/unit/unit_data.gd").new()
		var arch = player_data["unit data"]["static"]["unit type"]
		var unit_type =player_data["unit data"]["static"]["archetype"]
		var lvl = player_data["unit data"]["statistics"]["level"]
		var wealth = player_data["unit data"]["statistics"]["wealth"]
		player_data["unit data"]["statistics"]=make_user_data.populate_stats(arch,unit_type,lvl+1,cur_xp,wealth)