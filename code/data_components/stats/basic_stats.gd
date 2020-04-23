 # var rotationSpeed=5 -- no idea what this should be,probably should be static

# base stats are used for items and units
# health base

func get_unit_stats(archetype,unit_type,lvl):
    var unit_stats={}
    unit_stats["power stats"]=get_basic_stats(archetype,lvl,false)

    var unit_type_info = load("res://code/data_components/unit/static_data/unit_type.gd").new()
    unit_type_info=unit_type_info.get_type_data(unit_type)

    # these are the unit health and mana, item bonuses are added to the total
    unit_stats["max health"]=cal_health_mana(unit_type_info["base health"],lvl)
    unit_stats["max mana"]=cal_health_mana(unit_type_info["base mana"],lvl)
    unit_stats["cur health"]=cal_health_mana(unit_type_info["base health"],lvl)
    unit_stats["cur mana"]=cal_health_mana(unit_type_info["base mana"],lvl)    
    unit_stats["health recovery"]=get_health_recovery(unit_stats["max health"],lvl)
    unit_stats["mana recovery"]=get_mana_recovery(unit_stats["max mana"],lvl)
    # amount of gold made per 5 seconds.  Will be used for team total and for 
    # player gold generation
    unit_stats["wealth rate"]=unit_type_info["rank"]+lvl
    # xp rate is xp that is generated for the unit just for being alive
    # this is on a 5 second timer
    unit_stats["xp rate"]=(unit_stats["power stats"]["wisdom"]*lvl+unit_type_info["rank"])/10
    return unit_stats


func get_item_stats(archetype,item_type,lvl):
    var item_stats={}
    item_stats["power stats"]=get_basic_stats(archetype,lvl,true)

    var item_type_info = load("res://code/data_components/unit/items/item_type.gd").instance()
    item_type_info=item_type_info.get_type_data(item_type)

    item_stats["max health"]=cal_health_mana(item_type_info["health bonus"],lvl)
    item_stats["max mana"]=cal_health_mana(item_type_info["mana bonus"],lvl)
    item_stats["health recovery"]=cal_health_mana(item_type_info["healing bonus"],lvl)
    item_stats["mana recovery"]=cal_health_mana(item_type_info["mana recovery bonus"],lvl)
    # amount of gold made per 5 seconds.  Will be used for team total and for 
    # player gold generation
    item_stats["wealth rate"]=cal_health_mana(item_type_info["wealth rate bonus"],lvl)
    # xp rate is xp that is generated for the unit just for being alive
    # this is on a 5 second timer
    item_stats["xp rate"]=cal_health_mana(item_type_info["xp rate bonus"],lvl)
    return item_stats



# might use for item types
func get_basic_stats(archetype,level,is_item):
    var basic_stats = {}
    var lvl = level
    if(is_item):
        lvl = level/5
    var arr_stats = load("res://code/data_components/unit/static_data/archetype.gd").new()
    arr_stats = arr_stats.get_arch_data(archetype)
    arr_stats = arr_stats["stat array"]
    basic_stats["armor"] = stat_helper(arr_stats,0,lvl)
    basic_stats["strength"] = stat_helper(arr_stats,1,lvl)
    basic_stats["vitality"] = stat_helper(arr_stats,2,lvl)
    basic_stats["agility"] = stat_helper(arr_stats,3,lvl)
    basic_stats["dexterity"] = stat_helper(arr_stats,4,lvl)
    basic_stats["intelligence"] = stat_helper(arr_stats,5,lvl)
    basic_stats["wisdom"] = stat_helper(arr_stats,6,lvl)
    basic_stats["charisma"] = stat_helper(arr_stats,7,lvl)
    basic_stats["endurance"] = stat_helper(arr_stats,8,lvl)
    basic_stats["luck"] = stat_helper(arr_stats,9,lvl)
    basic_stats["move speed"] = stat_helper(arr_stats,10,lvl)
    return basic_stats

func stat_helper(arr,spot,lvl):
    var stat = (arr[spot]+lvl+(lvl*.05*arr[spot]))
    if(stat<1):
        stat=0
    return stat

# takes base health or base mana and mutiplies it with the level and some
# constant values in order to produce the current health or mana (horm)
# also used by item types for their recovery rates, and xp and wealth rates
# units use different function for these
func cal_health_mana(horm,lvl):
    var max_horm=horm*(1+(0.1*lvl))
    return max_horm

# used by units not items
func get_mana_recovery(max_mana,lvl):
    var denom = 300-(lvl*2)
    if(denom<100):
        denom=100
    var mana_rec=max_mana/denom
    return mana_rec

# used by units not items
func get_health_recovery(max_health,lvl):
    var denom = 600-(lvl*4)
    if(denom<200):
        denom=200
    var health_rec=max_health/denom
    return health_rec