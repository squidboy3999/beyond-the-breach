# 21 archetypes 
var arch_list =["WindElemental","WaterElemental","StormBreaker",
	"Sorcerer","SeaSentinel","Salamandar","Rogue","PoisonElemental","Nomad",
	"MagicElemental","Knight","IceElemental","Golem","FireElemental",
	"ElectricElemental","EarthElemental","DarkDweller","Brute","BladeElemental",
	"Balanced","Assassin"]

# Stat Array
# 0- armor, 1- strength,2- vitality,3- agility,4- dexterity,5- intelligence,
# 6- wisdom,7- charisma,8- endurance,9- luck,10- moveSpeed.
# Every type should use 22 points to allocate.  

# Multiplier used for attack and defense
# "Basic","Blades","Earth","Electric","Fire","Ice","Magic","Poison","Water","Wind"

func get_arch_data(archetype_name):
	var arch_data ={}
	match archetype_name:
		"WindElemental":
			arch_data["multipliers"]=[2,2,2,2,2,2,2,2,2,23]
			arch_data["damage preference"]="Wind"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[6,5,1,1,1,1,1,1,1,1,3]
		"WaterElemental":
			arch_data["multipliers"]=[2,2,2,2,2,2,2,2,23,2]
			arch_data["damage preference"]="Water"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[6,5,1,1,1,1,1,1,1,1,3]
		"StormBreaker":
			arch_data["multipliers"]=[4,3,3,11,3,3,3,3,5,3]
			arch_data["damage preference"]="Electric"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[3,1,1,3,1,3,3,1,1,3,2]
		"Sorcerer":
			arch_data["multipliers"]=[4,3,3,5,3,3,11,3,3,3]
			arch_data["damage preference"]="Magic"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[1,1,1,1,1,5,5,4,1,1,1]
		"SeaSentinel":
			arch_data["multipliers"]=[4,3,3,3,3,3,3,3,11,5]
			arch_data["damage preference"]="Water"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[1,1,3,3,1,1,1,3,5,1,2]
		"Salamandar":
			arch_data["multipliers"]=[4,3,5,3,11,3,3,3,3,3]
			arch_data["damage preference"]="Fire"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[1,1,3,3,1,1,1,3,5,1,2]
		"Rogue":
			arch_data["multipliers"]=[9,3,3,3,3,3,3,3,3,11]
			arch_data["damage preference"]="Wind"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[1,1,3,3,1,1,1,3,5,1,2]
		"PoisonElemental":
			arch_data["multipliers"]=[2,2,2,2,2,2,2,23,2,2]
			arch_data["damage preference"]="Poison"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[6,5,1,1,1,1,1,1,1,1,3]
		"Nomad":
			arch_data["multipliers"]=[4,3,11,3,3,5,3,3,3,3]
			arch_data["damage preference"]="Earth"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[1,1,3,3,1,1,1,3,5,1,2]
		"MagicElemental":
			arch_data["multipliers"]=[2,2,2,2,2,2,23,2,2,2]
			arch_data["damage preference"]="Magic"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[6,5,1,1,1,1,1,1,1,1,3]
		"Knight":
			arch_data["multipliers"]=[4,11,3,3,3,3,5,3,3,3]
			arch_data["damage preference"]="Blades"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[8,5,1,1,1,1,1,1,1,1,1]
		"IceElemental":
			arch_data["multipliers"]=[2,2,2,2,2,23,2,2,2,2]
			arch_data["damage preference"]="Ice"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[6,5,1,1,1,1,1,1,1,1,3]
		"Golem":
			arch_data["multipliers"]=[23,2,2,2,2,2,2,2,2,2]
			arch_data["damage preference"]="Basic"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[1,4,5,1,1,1,1,1,5,1,1]
		"FireElemental":
			arch_data["multipliers"]=[2,2,2,2,23,2,2,2,2,2]
			arch_data["damage preference"]="Fire"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[6,5,1,1,1,1,1,1,1,1,3]
		"ElectricElemental":
			arch_data["multipliers"]=[2,2,2,23,2,2,2,2,2,2]
			arch_data["damage preference"]="Electric"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[6,5,1,1,1,1,1,1,1,1,3]
		"EarthElemental":
			arch_data["multipliers"]=[2,2,23,2,2,2,2,2,2,2]
			arch_data["damage preference"]="Earth"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[6,5,1,1,1,1,1,1,1,1,3]
		"DarkDweller":
			arch_data["multipliers"]=[4,3,3,3,5,11,3,5,3,3]
			arch_data["damage preference"]="Ice"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[1,1,3,3,1,1,1,3,5,1,2]
		"Brute":
			arch_data["multipliers"]=[15,3,3,3,5,3,3,3,3,3]
			arch_data["damage preference"]="Basic"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[1,5,4,1,1,1,1,1,5,1,1]
		"BladeElemental":
			arch_data["multipliers"]=[2,23,2,2,2,2,2,2,2,2]
			arch_data["damage preference"]="Blades"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[6,5,1,1,1,1,1,1,1,1,3]
		"Balanced":
			arch_data["multipliers"]=[5,4,4,4,4,4,4,4,4,4]
			arch_data["damage preference"]="Basic"
			arch_data["attack preference"]="Ranged"
			arch_data["stat array"]=[2,2,2,2,2,2,2,2,2,2,2]
		"Assassin":
			arch_data["multipliers"]=[4,5,3,3,3,3,3,11,3,3]
			arch_data["damage preference"]="Poison"
			arch_data["attack preference"]="Melee"
			arch_data["stat array"]=[1,1,1,3,3,1,1,1,3,3,4]
		_:
			# used for items when populating base stats maybe?
			arch_data["multipliers"]=[0,0,0,0,0,0,0,0,0,0]
			arch_data["damage preference"]="None"
			arch_data["attack preference"]="None"
			arch_data["stat array"]=[1,1,1,1,1,1,1,1,1,1,1]
	return arch_data

func select_random_arch():
	var spot=randi()%21
	return arch_list[spot]

func get_defense_arr(lvl,archetype_name):
	var arch_data=get_arch_data(archetype_name)
	var multi_arr=arch_data["multipliers"]
	var def_arr=[0,0,0,0,0,0,0,0,0,0]
	for i in range(0,10):
		def_arr[i]=0.5*lvl*multi_arr[i]
	return def_arr

func get_attack_arr(lvl,archetype_name):
	var arch_data=get_arch_data(archetype_name)
	var multi_arr=arch_data["multipliers"]
	var att_arr=[0,0,0,0,0,0,0,0,0,0]
	for i in range(0,10):
		att_arr[i]=lvl*multi_arr[i]
	return att_arr