extends Node

onready var portrait = get_node("portrait_area/picture_area/portrait")
onready var cur_health_bar = get_node("fill_bars/cur_health_bar")
onready var cur_mana_bar = get_node("fill_bars/cur_mana_bar")
onready var cur_xp_bar = get_node("fill_bars/cur_xp_bar")
onready var name_section = get_node("text_info/name_&_team")
onready var hmx = get_node("text_info/cur_hmx")
onready var lvl_arch_dmg = get_node("text_info/lvl_arch_dmg")
onready var mny_lk_tk = get_node("text_info/mny_lk_tk")
onready var user = get_node("..")
var timer =.5

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	set_overlay()

func set_overlay():
	#var user = get_node("../x-bot")
	for p_node in user.get_children():
		print(p_node.name)
		if p_node.name == "Scene Root":
			user = p_node
			#print()
			break


func _process(delta):
	timer = timer - delta
	if(timer<=0):
		populate_graphics()
		populate_text()
		timer=.5

func populate_graphics():
	populate_portrait()
	populate_bars()

func populate_portrait():
	#var port_str = global.data_manager.dm_player.player_data["unit data"]["portrait"]
	var port_str="MordoPortrait"
	#var new_pic = load("res://gui_elements/portraits/"+user.get_script().unit_data.portrait_string)
	var new_pic = load("res://gui_elements/portraits/"+port_str+".png")
	portrait.texture = new_pic

func populate_bars():
	var cur_health_pic = load("res://gui_elements/overlay/healthStatusBar.png")
	var cur_mana_pic = load("res://gui_elements/overlay/manaStatusBar.png")
	var cur_xp_pic = load("res://gui_elements/overlay/xpStatusBar.png")
	cur_health_bar.texture = cur_health_pic
	cur_mana_bar.texture = cur_mana_pic
	cur_xp_bar.texture = cur_xp_pic
	cur_health_bar.set_scale(Vector2(.8*health_ratio(),.35))
	cur_mana_bar.set_scale(Vector2(.8*mana_ratio(),.35))
	cur_xp_bar.set_scale(Vector2(.8*xp_ratio(),.35))

func health_ratio():
	return get_cur_health()/get_max_health()
func mana_ratio():
	return get_cur_mana()/get_max_mana()
func xp_ratio():
	return get_cur_xp()/get_next_lvl_xp()

func populate_text():
	populate_name_section()
	populate_hmx()
	populate_lvl_arch_dmg()
	populate_mny_lk_tk()

func populate_name_section():
	var p_name = global.data_manager.dm_player.player_data["name"]
	var nation_name = global.data_manager.dm_player.player_data["unit data"]["nation"]["name"]
	var location = 'placeholder'
	name_section.text ="Name:  "+p_name+"\nNation:  "+nation_name+"\nLocation:  "+location

func populate_hmx():
	var cur_health= str(get_cur_health())
	var max_health= str(get_max_health())
	var cur_mana= str(get_cur_mana())
	var max_mana= str(get_max_mana())
	var cur_xp= str(get_cur_xp())
	var next_lvl_xp= str(get_next_lvl_xp())      
	hmx.text =cur_health+"/"+max_health+"\n"+cur_mana+"/"+max_mana+"\n"+cur_xp+"/"+next_lvl_xp

func populate_lvl_arch_dmg():
	var lvl = str(get_lvl())
	var arch = get_arch()
	var dmg = str(get_damage())
	lvl_arch_dmg.text ="Level:  "+lvl+"\nArchetype:  "+arch+"\nDamage:  "+dmg

func populate_mny_lk_tk():
	var money = str(get_money())
	var local_kills = str(get_local_kills())
	var total_kills = str(get_total_kills())
	mny_lk_tk.text="Money:  "+money+"\nLocal Kills:  "+local_kills+"\nTotal Kills:  "+total_kills

# these will be handled somewhere else in the future, temporary fix
func get_cur_health():
	return global.data_manager.dm_player.player_data["unit data"]["statistics"]["basic stats"]["cur health"]

func get_max_health():
	return global.data_manager.dm_player.player_data["unit data"]["statistics"]["basic stats"]["max health"]

func get_cur_mana():
	return global.data_manager.dm_player.player_data["unit data"]["statistics"]["basic stats"]["cur mana"]

func get_max_mana():
	return global.data_manager.dm_player.player_data["unit data"]["statistics"]["basic stats"]["max mana"]

func get_cur_xp():
	return global.data_manager.dm_player.player_data["unit data"]["statistics"]["xp"]

func get_next_lvl_xp():
	return global.data_manager.dm_player.player_data["unit data"]["statistics"]["next level xp"]

func get_lvl():
	return global.data_manager.dm_player.player_data["unit data"]["statistics"]["level"]

func get_arch():
	return global.data_manager.dm_player.player_data["unit data"]["static"]["archetype"]

func get_damage():
	# no damage yet set for units, maybe in traits
	return global.data_manager.dm_player.player_data["unit data"]["statistics"]["basic stats"]["cur mana"]

func get_money():
	return global.data_manager.dm_player.player_data["unit data"]["statistics"]["wealth"]

func get_local_kills():
	# no kill facts set up
	return 0
	#return global.data_manager.dm_player.player_data["unit data"]["statistics"]["xp"]

func get_total_kills():
	# no kill facts set up
	return 0
	#return global.data_manager.dm_player.player_data["unit data"]["statistics"]["next level xp"]
