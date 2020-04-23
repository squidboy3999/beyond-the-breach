# at present groups are just model template sets, in the future these may include
# name sets, summaries and possibly bonuses

# specialty nations
var civ_groups=["core"]
var worker_groups=["core"]
var zombie_groups=["core"]
var robot_groups=["core"]
var monster_groups=["core"]

# regular nations
var eternian_republic_groups=["core"]
var night_horde_groups=["core"]
var initiative_groups=["core"]
var pantheon_groups=["core"]
var sentai_clan_groups=["core"]
var shadow_empire_groups=["core"]
var united_league_groups=["core"]
var sith_alliance_groups=["core"]

# maybe there is a more global way to manage nations...
func get_groups(nation,get_models=false,group="none"):
	var groups=[]
	var models={}
	match nation:
		"civilian":
			groups=civ_groups
			models=civ_groups_models(group)
		"worker":
			groups=worker_groups
			models=worker_groups_models(group)
		"zombie":
			groups=zombie_groups
			models=zombie_groups_models(group)
		"robot":
			groups=robot_groups
			models=robot_groups_models(group)
		"monster":
			groups=monster_groups
			models=monster_groups_models(group)
		"eternian_republic":
			groups=eternian_republic_groups
			models=eternian_republic_groups_models(group)
		"night_horde":
			groups=night_horde_groups
			models=night_horde_groups_models(group)
		"initiative":
			groups=initiative_groups
			models=initiative_groups_models(group)
		"pantheon":
			groups=pantheon_groups
			models=pantheon_groups_models(group)
		"sentai_clan":
			groups=sentai_clan_groups
			models=sentai_clan_groups_models(group)
		"shadow_empire":
			groups=shadow_empire_groups
			models=shadow_empire_groups_models(group)
		"united_league":
			groups=united_league_groups
			models=united_league_groups_models(group)
		"sith_alliance":
			groups=sith_alliance_groups
			models=sith_alliance_groups_models(group)
		_:
			groups=united_league_groups
			models=united_league_groups_models(group)
			print(str(nation)+" not a supported nation. Defaulting to united_league.")
	if get_models:
		return models
	else:
		return groups

func get_rand_group(nation):
	#print(nation)
	var groups = get_groups(nation)
	var spot = 0
	if(groups.size()>1):
		spot=randi()%groups.size()
	return groups[spot]

func group_models(nation,group):
	return get_groups(nation,true,group)

# models might
func civ_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func worker_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func zombie_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func robot_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func monster_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

# regular nations
func eternian_republic_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func night_horde_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func initiative_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func pantheon_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func sentai_clan_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func shadow_empire_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func united_league_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models

func sith_alliance_groups_models(group):
	var models={}
	models["head_models"]={}
	models["body_models"]={}
	match group:
		"core":
			models["head_models"]["base"]=["none"]
			models["head_models"]["tower"]=["none"]
			models["head_models"]["titan"]=["none"]
			models["head_models"]["guardian"]=["none"]
			models["head_models"]["lt"]=["none"]
			models["head_models"]["hunter"]=["none"]
			models["head_models"]["soldier"]=["none"]
			models["head_models"]["misc"]=["none"]
			models["body_models"]["base"]=["TBD"]
			models["body_models"]["tower"]=["TBD"]
			models["body_models"]["titan"]=["none"]
			models["body_models"]["guardian"]=["none"]
			models["body_models"]["lt"]=["none"]
			models["body_models"]["hunter"]=["none"]
			models["body_models"]["soldier"]=["none"]
			models["body_models"]["misc"]=["none"]
	return models