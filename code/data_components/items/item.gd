func get_empty_item():
	var item ={}
	item["name"]=" "
	item["item category"]="none"
	item["item type"]="none"
	item["archetype"]="none"
	item["icon"]="none"
	item["traits"]=" "
	item["minimum level"]=1
	item["base states"]=" "
	return item

# level of unit or map where item is created
func make_random_item(level):
	var item={}
	var categories = load("res://code/data_components/items/item_category.gd").instance()
	var item_types = load("res://code/data_components/items/item_type.gd").instance()
	var arcetypes = load("res://code/data_components/items/unit/static_dat/archetype.gd").instance()
	item["item category"]=categories.get_random_category()
	item["minimum level"]=categories.get_rand_level(level)
	var item_cate=categories.get_category_elements(item["item category"])
	var is_consumable=item_cate["consumable"]
	if(is_consumable):
		item["item type"]=" "
		item["archetype"]=" "
		item["traits"]=" "
		item["base states"]=" "
	else:
		item["item type"]=item_types.select_random_item_type()
		item["archetype"]=arcetypes.select_random_arch()
		var multiplier=item_cate["numerator"]
		item["traits"]=get_traits(item["archetype"],multiplier)
		item["base states"]=get_base_stats(item["archetype"],multiplier)
	item["name"]=make_name(item["item category"],item["item type"],item["archetype"])
	item["icon"]=get_item_icon(item["item category"],item["item type"],item["archetype"])


	return item

# uses category, item type and archetype - for instance champion ring of the assassin
# or just health potion
func make_name(cate,type,arch):
	pass

# given the category,type and archetype an icon is selected for the icon
# simply returns empty for now until this is setup
func get_item_icon(category,type,archetype):
	return "empty"

func get_traits(archetype,lvl):
	pass

func get_base_stats(archetype,lvl):
	pass