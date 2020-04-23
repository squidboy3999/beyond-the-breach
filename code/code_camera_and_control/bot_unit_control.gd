extends Spatial


func _ready():
	pass

func init(model_dict):
	setup_body(model_dict)

func _physics_process(delta):
	pass

func setup_body(model_dict):
	var body_part_prefix="res://Models/000_static_body_parts_x-bot/"
	var head_path=body_part_prefix+"head/"+model_dict["head"]+".tscn"
	var shoulder_left_path=body_part_prefix+"shoulder_left/"+model_dict["body"]["shoulder_left"]+".tscn"
	var shoulder_right_path=body_part_prefix+"shoulder_right/"+model_dict["body"]["shoulder_right"]+".tscn"
	var chest_path=body_part_prefix+"chest/"+model_dict["body"]["chest"]+".tscn"
	var torso_path=body_part_prefix+"torso/"+model_dict["body"]["torso"]+".tscn"
	var waist_path=body_part_prefix+"waist/"+model_dict["body"]["waist"]+".tscn"
	var hip_path=body_part_prefix+"hips/"+model_dict["body"]["hips"]+".tscn"
	var bicep_left_path=body_part_prefix+"bicep_left/"+model_dict["body"]["bicep_left"]+".tscn"
	var bicep_right_path=body_part_prefix+"bicep_right/"+model_dict["body"]["bicep_right"]+".tscn"
	var elbow_left_path=body_part_prefix+"elbow_left/"+model_dict["body"]["elbow_left"]+".tscn"
	var elbow_right_path=body_part_prefix+"elbow_right/"+model_dict["body"]["elbow_right"]+".tscn"
	var forearm_left_path=body_part_prefix+"forearm_left/"+model_dict["body"]["forearm_left"]+".tscn"
	var forearm_right_path=body_part_prefix+"forearm_right/"+model_dict["body"]["forearm_right"]+".tscn"
	var hand_left_path=body_part_prefix+"hand_left/"+model_dict["body"]["hand_left"]+".tscn"
	var hand_right_path=body_part_prefix+"hand_right/"+model_dict["body"]["hand_right"]+".tscn"
	var thigh_left_path=body_part_prefix+"thigh_left/"+model_dict["body"]["thigh_left"]+".tscn"
	var thigh_right_path=body_part_prefix+"thigh_right/"+model_dict["body"]["thigh_right"]+".tscn"
	var knee_left_path=body_part_prefix+"knee_left/"+model_dict["body"]["knee_left"]+".tscn"
	var knee_right_path=body_part_prefix+"knee_right/"+model_dict["body"]["knee_right"]+".tscn"
	var calf_left_path=body_part_prefix+"calf_left/"+model_dict["body"]["calf_left"]+".tscn"
	var calf_right_path=body_part_prefix+"calf_right/"+model_dict["body"]["calf_right"]+".tscn"
	var foot_left_path=body_part_prefix+"foot_left/"+model_dict["body"]["foot_left"]+".tscn"
	var foot_right_path=body_part_prefix+"foot_right/"+model_dict["body"]["foot_right"]+".tscn"

	var model_obj='x-bot'
	#print_tree()
	if not has_node(model_obj+"/Skeleton/head"):
		print("invalid bones: "+head_path)
		print("UNIT COUNT: "+str(global.unit_cnt))
		#print_tree()
		return
	else:
		var head_bone = get_node(model_obj+"/Skeleton/head")
		var head = load(head_path).instance()
		head_bone.add_child(head)
		print("head attached .... "+head_path)
		global.unit_cnt=global.unit_cnt+1
		

	#shoulders
	var left_shoulder_bone = get_node(model_obj+"/Skeleton/left_shoulder")
	var left_shoulder = load(shoulder_left_path).instance()
	left_shoulder_bone.add_child(left_shoulder)
	var right_shoulder_bone = get_node(model_obj+"/Skeleton/right_shoulder")
	var right_shoulder = load(shoulder_right_path).instance()
	right_shoulder_bone.add_child(right_shoulder)

	#chest
	var chest_bone = get_node(model_obj+"/Skeleton/chest")
	var chest = load(chest_path).instance()
	chest_bone.add_child(chest)

	#torso
	var torso_bone = get_node(model_obj+"/Skeleton/torso")
	var torso = load(torso_path).instance()
	torso_bone.add_child(torso)

	#waist
	var waist_bone = get_node(model_obj+"/Skeleton/waist")
	var waist = load(waist_path).instance()
	waist_bone.add_child(waist)

	#hips
	var hip_bone = get_node(model_obj+"/Skeleton/hips")
	var hip = load(hip_path).instance()
	hip_bone.add_child(hip)

	#biceps
	var bicep_right_bone = get_node(model_obj+"/Skeleton/bicep_right")
	var bicep_right = load(bicep_right_path).instance()
	bicep_right_bone.add_child(bicep_right)
	var bicep_left_bone = get_node(model_obj+"/Skeleton/bicep_left")
	var bicep_left = load(bicep_left_path).instance()
	bicep_left_bone.add_child(bicep_left)

	#elbows - use the forearm bone
	var forearm_right_bone = get_node(model_obj+"/Skeleton/forearm_right")
	var elbow_right = load(elbow_right_path).instance()
	forearm_right_bone.add_child(elbow_right)
	var forearm_left_bone = get_node(model_obj+"/Skeleton/forearm_left")
	var elbow_left = load(elbow_left_path).instance()
	forearm_left_bone.add_child(elbow_left)

	#forearms
	var forearm_right = load(forearm_right_path).instance()
	forearm_right_bone.add_child(forearm_right)
	var forearm_left = load(forearm_left_path).instance()
	forearm_left_bone.add_child(forearm_left)

#	#hands
	var hand_right_bone = get_node(model_obj+"/Skeleton/hand_right")
	var hand_right = load(hand_right_path).instance()
	hand_right_bone.add_child(hand_right)
	var hand_left_bone = get_node(model_obj+"/Skeleton/hand_left")
	var hand_left = load(hand_left_path).instance()
	hand_left_bone.add_child(hand_left)

#	#thighs
	var thigh_right_bone = get_node(model_obj+"/Skeleton/thigh_right")
	var thigh_right = load(thigh_right_path).instance()
	thigh_right_bone.add_child(thigh_right)
	var thigh_left_bone = get_node(model_obj+"/Skeleton/thigh_left")
	var thigh_left = load(thigh_left_path).instance()
	thigh_left_bone.add_child(thigh_left)

#	#calves
	var calf_right_bone = get_node(model_obj+"/Skeleton/calf_right")
	var calf_right = load(calf_right_path).instance()
	calf_right_bone.add_child(calf_right)
	var calf_left_bone = get_node(model_obj+"/Skeleton/calf_left")
	var calf_left = load(calf_left_path).instance()
	calf_left_bone.add_child(calf_left)

#	#knees - uses the calf bones
	var knee_right = load(knee_right_path).instance()
	calf_right_bone.add_child(knee_right)
	var knee_left = load(knee_left_path).instance()
	calf_left_bone.add_child(knee_left)

#	#feet
	var foot_right_bone = get_node(model_obj+"/Skeleton/foot_right")
	var foot_right = load(foot_right_path).instance()
	foot_right_bone.add_child(foot_right)
	var foot_left_bone = get_node(model_obj+"/Skeleton/foot_left")
	var foot_left = load(foot_left_path).instance()
	foot_left_bone.add_child(foot_left)

