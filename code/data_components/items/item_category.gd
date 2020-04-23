# Future work add weight,size and raity to items
var item_category=["body armor","helmet","shoulders","bracers","gloves","pants",
"boots","necklace","ring","health potion","mana potion","xp potion"]

# consumables don't have stats just bonus type and amount 
# numerators - all levels for items are divided by 10 for calculating the 
# values from the items archetype, the numerator is how much that value is 
# multiplied by. For example armor has a numerator of 9 so .9*lvl is used to 
# calculate the stats for the item
func get_category_elements(item_cate):
    var item_cate_data={}
    match item_cate:
    	"body armor":
    		item_cate_data["consumable"]=false
    		item_cate_data["numerator"]=9
    	"helmet":
    		item_cate_data["consumable"]=false
    		item_cate_data["numerator"]=4
    	"shoulders":
    		item_cate_data["consumable"]=false
    		item_cate_data["numerator"]=3
    	"bracers":
    		item_cate_data["consumable"]=false
    		item_cate_data["numerator"]=3
    	"gloves":
    		item_cate_data["consumable"]=false
    		item_cate_data["numerator"]=3
    	"pants":
    		item_cate_data["consumable"]=false
    		item_cate_data["numerator"]=4
		"boots":
			item_cate_data["consumable"]=false
			item_cate_data["numerator"]=4
		"necklace":
			item_cate_data["consumable"]=false
			item_cate_data["numerator"]=2
		"ring":
			item_cate_data["consumable"]=false
			item_cate_data["numerator"]=1
		"health potion":
			item_cate_data["consumable"]=true
			# what potion does
			item_cate_data["bonus type"]="cur health"
			# amount os multiplied by level
			item_cate_data["bonus amount"]=45
		"mana potion":
			item_cate_data["consumable"]=true
			# what potion does
			item_cate_data["bonus type"]="cur mana"
			# amount os multiplied by level
			item_cate_data["bonus amount"]=45
		"xp potion":
			item_cate_data["consumable"]=true
			# what potion does
			item_cate_data["bonus type"]="xp"
			# amount os multiplied by level
			item_cate_data["bonus amount"]=45
	return item_cate_data

fun get_random_category():
	var item number = randi()%100+1
	var cate=""
	if(item_number<11):
		cate="xp potion"
	elif(item_number<21):
		cate="mana potion"
	elif(item_number<31):
		cate="health potion"
	elif(item_number<42):
		cate="ring"
	elif(item_number<51):
		cate="necklace"
	elif(item_number<60):
		cate="boots"
	elif(item_number<69):
		cate="pants"
	elif(item_number<78):
		cate="gloves"
	elif(item_number<85):
		cate="bracers"
	elif(item_number<92):
		cate="shoulders"
	elif(item_number<96):
		cate="helmet"
	else:
		cate="armor"
	return cate

func get_rand_level(base_level):
	var min_lvl=level-5
	if(min_lvl<1):
		min_lvl=1
	var max_lvl=level+5
	var rand_lvl = min_lvl + (randi()%(max_lvl-min_lvl)+1)
	return rand_lvl


func get_level_multiple(item_cate,level):
	var cate = get_category_elements(item_cate)
	var mul=level/10
	if(cate["numerator"]==Null):
		print("item category does not have a numerator!")
	else:
		mul=mul*cate["numerator"]
	return mul

func get_random_category():
	var item_number = randi()%100+1
	var cate=""
	if(item_number<21):
		cate=item_category[11]
	elif(item_number<41):
		cate=item_types[10]
	elif(item_number<61):
		cate=item_types[9]
	elif(item_number<70):
		cate=item_types[8]
	elif(item_number<74):
		cate=item_types[7]
	elif(item_number<78):
		cate=item_types[6]
	elif(item_number<82):
		cate=item_types[5]
	elif(item_number<86):
		cate=item_types[4]
	elif(item_number<90):
		cate=item_types[3]
	elif(item_number<94):
		cate=item_types[2]
	elif(item_number<97):
		cate=item_types[1]
	else:
		cate=item_types[0]
	return cate