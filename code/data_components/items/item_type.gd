# 13 item types, experience and wealth rate are tied together for now.
var item_types =["standard","light health","strong health","light healing",
"strong healing","light mana","strong mana","light mana recovery",
"strong mana recovery","light experience","strong experience","champion",
"titan"]

func get_type_data(item_type):
    var item_type_data={}
    match item_type:
    	"standard":
    		item_type_data["health bonus"]=0
    		item_type_data["healing bonus"]=0
    		item_type_data["mana bonus"]=0
    		item_type_data["mana recovery bonus"]=0
    		item_type_data["xp rate bonus"]=0
    		item_type_data["wealth rate bonus"]=0
    	"light health":
    	    item_type_data["health bonus"]=15
    		item_type_data["healing bonus"]=0
    		item_type_data["mana bonus"]=0
    		item_type_data["mana recovery bonus"]=0
    		item_type_data["xp rate bonus"]=0
    		item_type_data["wealth rate bonus"]=0
    	"strong health":
    	    item_type_data["health bonus"]=45
    		item_type_data["healing bonus"]=0
    		item_type_data["mana bonus"]=0
    		item_type_data["mana recovery bonus"]=0
    		item_type_data["xp rate bonus"]=0
    		item_type_data["wealth rate bonus"]=0
    	"light healing":
    	    item_type_data["health bonus"]=0
    		item_type_data["healing bonus"]=5
    		item_type_data["mana bonus"]=0
    		item_type_data["mana recovery bonus"]=0
    		item_type_data["xp rate bonus"]=0
    		item_type_data["wealth rate bonus"]=0
		"strong healing":
		    item_type_data["health bonus"]=0
    		item_type_data["healing bonus"]=15
    		item_type_data["mana bonus"]=0
    		item_type_data["mana recovery bonus"]=0
    		item_type_data["xp rate bonus"]=0
    		item_type_data["wealth rate bonus"]=0
		"light mana":
		    item_type_data["health bonus"]=0
    		item_type_data["healing bonus"]=0
    		item_type_data["mana bonus"]=15
    		item_type_data["mana recovery bonus"]=0
    		item_type_data["xp rate bonus"]=0
    		item_type_data["wealth rate bonus"]=0
		"strong mana":
		    item_type_data["health bonus"]=0
    		item_type_data["healing bonus"]=0
    		item_type_data["mana bonus"]=45
    		item_type_data["mana recovery bonus"]=0
    		item_type_data["xp rate bonus"]=0
    		item_type_data["wealth rate bonus"]=0
		"light mana recovery":
		    item_type_data["health bonus"]=0
    		item_type_data["healing bonus"]=0
    		item_type_data["mana bonus"]=0
    		item_type_data["mana recovery bonus"]=5
    		item_type_data["xp rate bonus"]=0
    		item_type_data["wealth rate bonus"]=0
		"strong mana recovery":
		    item_type_data["health bonus"]=0
    		item_type_data["healing bonus"]=0
    		item_type_data["mana bonus"]=0
    		item_type_data["mana recovery bonus"]=15
    		item_type_data["xp rate bonus"]=0
    		item_type_data["wealth rate bonus"]=0
		"light experience":
		    item_type_data["health bonus"]=0
    		item_type_data["healing bonus"]=0
    		item_type_data["mana bonus"]=0
    		item_type_data["mana recovery bonus"]=0
    		item_type_data["xp rate bonus"]=5
    		item_type_data["wealth rate bonus"]=5
		"strong experience":
		    item_type_data["health bonus"]=0
    		item_type_data["healing bonus"]=0
    		item_type_data["mana bonus"]=0
    		item_type_data["mana recovery bonus"]=0
    		item_type_data["xp rate bonus"]=15
    		item_type_data["wealth rate bonus"]=15
		"champion":
		    item_type_data["health bonus"]=15
    		item_type_data["healing bonus"]=5
    		item_type_data["mana bonus"]=15
    		item_type_data["mana recovery bonus"]=5
    		item_type_data["xp rate bonus"]=5
    		item_type_data["wealth rate bonus"]=5
		"titan":
		    item_type_data["health bonus"]=45
    		item_type_data["healing bonus"]=15
    		item_type_data["mana bonus"]=45
    		item_type_data["mana recovery bonus"]=15
    		item_type_data["xp rate bonus"]=15
    		item_type_data["wealth rate bonus"]=15
    return item_type_data

# idealing this would be a match statement but syntax for ranges in match 
# not yet known
func select_random_item_type():
	var item_number = randi()%100+1
	var type=""
	if(item_number<50):
		type=item_types[0]
	elif(item_number<56):
		type=item_types[1]
	elif(item_number<59):
		type=item_types[2]
	elif(item_number<65):
		type=item_types[3]
	elif(item_number<68):
		type=item_types[4]
	elif(item_number<74):
		type=item_types[5]
	elif(item_number<77):
		type=item_types[6]
	elif(item_number<83):
		type=item_types[7]
	elif(item_number<86):
		type=item_types[8]
	elif(item_number<92):
		type=item_types[9]
	elif(item_number<95):
		type=item_types[10]
	elif(item_number<100):
		type=item_types[11]
	else:
		type=item_types[12]
	return type