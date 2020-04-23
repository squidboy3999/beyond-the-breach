# unit data is data used by both bot units and player units

# portrait can be "none" for now - future iterations will include portaits to 
# match head models
func get_generated_unit_data(group,nation,unit_type):
	var archetype=""
	# randomly select archetype
	var arch_info=load("res://code/data_components/unit/static_data/archetype.gd").new()
	archetype=arch_info.select_random_arch()
	return get_new_data(nation,group,archetype,unit_type)

# building units only use body_templates with a "none" value for head template
func get_new_data(nation,group,archetype,unit_type):
	var unit_data={}
	unit_data["static"]={}
	unit_data["static"]["unit type"]=unit_type
	unit_data["static"]["archetype"]=archetype
	unit_data["nation"]={}
	unit_data["nation"]["name"]=nation
	unit_data["nation"]["group"]=group
	var model_selector=load("res://code/data_components/unit/model_templates/model_selector.gd").new()
	unit_data["gender"]=get_rand_gender()
	unit_data["model dict"]={}
	unit_data["model dict"]=model_selector.get_model_dict(nation,group,unit_type,unit_data["gender"])
	unit_data["portrait"]="portrait - not yet supported"
	unit_data["statistics"]={}
	unit_data["statistics"]=populate_stats(archetype,unit_type,1,0,0)
	unit_data["traits"]=populate_traits(unit_type,archetype,1)
	unit_data["cooldowns"]=populate_cooldowns(unit_type,archetype,1)
	unit_data["worn items"]=populate_worn_items()
	return unit_data

func get_rand_gender():
	var genders=["male","female","neutral"]
	var spot=randi()%3
	return genders[spot]

func print_values(unit_data):
	print ("unit type       = ",unit_data["static"]["unit type"])
	print ("archetype       = ",unit_data["static"]["archetype"])
	print ("nation          = ",unit_data["nation"]["name"])
	print ("group           = ",unit_data["nation"]["group"])
	print ("head model      = ",unit_data["model"]["head model"])
	print ("body template   = ",unit_data["model"]["body template"])
	print ("portrait string = ",unit_data["portrait"])
	# Player data should override this
	# time_change is a float
	
func populate_stats(archetype,unit_type,lvl,xp,wealth):
	var stats ={}
	var stat_maker = preload("res://code/data_components/unit/unit_stats.gd").new()
	stats = stat_maker.get_stats(archetype,unit_type,lvl,xp,wealth)
	return stats

func populate_traits(archetype,unit_type,lvl):
	pass

func populate_cooldowns(archetype,unit_type,lvl):
	pass

func populate_worn_items():
	pass



