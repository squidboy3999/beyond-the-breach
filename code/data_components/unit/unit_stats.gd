# used for populating stats of new units
func get_stats(archetype,unit_type,lvl,xp,wealth):
    var stats={}
    stats["level"]=lvl
    stats["rank"]=rank_helper(unit_type)
    stats["xp"]=xp
    stats["next level xp"]=get_lvl_xp(lvl)
    stats["wealth"]=wealth+(lvl*20)
    stats["basic stats"]={}
    stats["basic stats"]=get_basic_stats(archetype,unit_type,lvl)
    return stats

func rank_helper(unit_type):
    var unit_type_data=load("res://code/data_components/unit/static_data/unit_type.gd").new()
    unit_type_data=unit_type_data.get_type_data(unit_type)
    return unit_type_data["rank"]

func get_lvl_xp(lvl):
    var next_xp = ((((lvl+1)*lvl)/2)*1000)
    return next_xp

func get_basic_stats(archetype,unit_type,lvl):
    var basic_stats = {}
    var basic_stats_build = load("res://code/data_components/stats/basic_stats.gd").new()
    basic_stats = basic_stats_build.get_unit_stats(archetype,unit_type,lvl)
    return basic_stats


