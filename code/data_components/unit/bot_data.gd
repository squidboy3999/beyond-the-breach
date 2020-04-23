extends "unit_data.gd"
class bot_data:
    # created in sequence by group
	var id = 0
    # unique name used to locate unit itself (name+"_"+"id")
	var hashid =""
	var unit_name = ""
	# Used to select subfolders within nation
	var group = ""
    # target hashId is used for finding the unit in the unitcollection
    var target_hash_id = ""
    # tile locations made from pathfinding state
	# var targetPath:Point[]