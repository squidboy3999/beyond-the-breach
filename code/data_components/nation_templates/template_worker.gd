func get_nation_data(nation_cnt)
	var nation_data ={}
	nation_data.["name"]="Worker"
	nation_data.["level"]=1
	# not sure how this will be used
	nation_data.["wealth"]=1000000000
	nation_data.["tax_rate"]=1000
	nation_data.["ter_count"]=0
	nation_data.["captial"]="None"
	# higher rank is determined by level and ter_cnt
	nation_data.["rank"]=nation_cnt-5
	nation_data.["is_defeated"]=False
	nation_data.["high_lords"]=high_lord_helper()
	nation_data.["icon"]=""
	nation_data.["groups"]=group_helper()
	nation_data.["aggression"]=agression_helper(nation_cnt)
	nation_data.["traits"]=trait_helper()
	return nation_data

# high lords can be replaced after some time of being defeated
func high_lord_helper():
	var high_lords = {}
	# emperor
	high_lords["emperor"]["name"]=""
	high_lords["emperor"]["model"]=""
	high_lords["emperor"]["location"]=""
	high_lords["emperor"]["level_bonus"]=5
	high_lords["emperor"]["xp_bonus"]=100
	# north lord
	high_lords["north_lord"]["name"]=""
	high_lords["north_lord"]["model"]=""
	high_lords["north_lord"]["location"]=""
	high_lords["north_lord"]["level_bonus"]=3
	high_lords["north_lord"]["xp_bonus"]=50
	# south lord
	high_lords["south_lord"]["name"]=""
	high_lords["south_lord"]["model"]=""
	high_lords["south_lord"]["location"]=""
	high_lords["south_lord"]["level_bonus"]=3
	high_lords["south_lord"]["xp_bonus"]=50
	# east lord
	high_lords["east_lord"]["name"]=""
	high_lords["east_lord"]["model"]=""
	high_lords["east_lord"]["location"]=""
	high_lords["east_lord"]["level_bonus"]=3
	high_lords["east_lord"]["xp_bonus"]=50
	# west lord
	high_lords["west_lord"]["name"]=""
	high_lords["west_lord"]["model"]=""
	high_lords["west_lord"]["location"]=""
	high_lords["west_lord"]["level_bonus"]=3
	high_lords["west_lord"]["xp_bonus"]=50

	return high_lords

func group_helper():
	var groups = {}
	groups["count"]=3

	# sub groups have a name and which is used to load model paths from 
	# another function which uses sets of heads and body parts to assemble 
	# the groups members

	groups[0]["name"]=""
	groups[1]["name"]=""
	groups[2]["name"]=""

	return groups

func agression_helper(nation_cnt):
	var aggression = {}
	# measures aggression from 0 to 100, with 100 being the most agressive. 
	# Nations can invade past 50 but this is set by chance where more 
	# agression leads to a greater chance of invading. Units will attack 
	# past 50 but will default to the closest unit.

	# self is set to one as a flag not to adjust over time
	aggression[0]=10
	aggression[1]=-1
	aggression[2]=20
	aggression[3]=20
	aggression[4]=20
	aggression[5]=20
	aggression[6]=20
	if(nation_cnt>2):
		aggression[7]=20
		aggression[8]=20
		if(nation_cnt>4):
			aggression[9]=20
			aggression[10]=20
			aggression[11]=20
			aggression[12]=20

	return aggression

func trait_helper():
	var traits = {}
	# basic, blades, earth, electric, fire, ice, magic, poison, water, wind
	# actual damage is damage minus defense for matching trait pair
    # nations except civilians start at 40 points to allocate for damage 
    # and 30 points for defense - numbers can increase over time by random 
    # event, territory possession, victories in battle and mission bonueses
	traits[0]["type"] ="basic"
	traits[0]["damage"] =4
	traits[0]["defense"] =3
	traits[1]["type"] ="blades"
	traits[1]["damage"] =4
	traits[1]["defense"] =3
	traits[2]["type"] ="earth"
	traits[2]["damage"] =4
	traits[2]["defense"] =3
	traits[3]["type"] ="electric"
	traits[3]["damage"] =4
	traits[3]["defense"] =3
	traits[4]["type"] ="fire"
	traits[4]["damage"] =4
	traits[4]["defense"] =3
	traits[5]["type"] ="ice"
	traits[5]["damage"] =4
	traits[5]["defense"] =3
	traits[6]["type"] ="magic"
	traits[6]["damage"] =4
	traits[6]["defense"] =3
	traits[7]["type"] ="poison"
	traits[7]["damage"] =4
	traits[7]["defense"] =3
	traits[8]["type"] ="water"
	traits[8]["damage"] =4
	traits[8]["defense"] =3
	traits[9]["type"] ="wind"
	traits[9]["damage"] =4
	traits[9]["defense"] =3

	return traits
