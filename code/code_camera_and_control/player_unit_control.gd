extends Spatial

var speed = 5.0
# The target needs to be separated from the root because we can control its rotation independently
onready var target = get_node(".")
onready var camera_target = get_node("target")
onready var camera = get_node("target/player_camera")

var left_pressed = false
var middle_pressed = false
var last_position = Vector2()
var target_last_position = Vector2()
var anim_testing = true
var has_weapon = false
var melee_attack = true
var rifle_attack = false
var is_crawling = false
var is_working = false
var use_power = false
var model_init = false
#speed 0 for slow, 1 for normal, 2 for fast
var crawl_speed = 1
var toggle_timer = 0.25
var motion = Vector3()
var unit_data
var debug = false

func _ready():
	set_process_unhandled_input(true)
	var unit_data_class = load("res://code/data_components/unit/unit_data.gd").new()
	unit_data=unit_data_class.get_new_data("nation","group","archetype","unit_type")
	if debug:
		unit_data_class.print_values(unit_data)
	#pass

func _unhandled_input(event):
	if event is InputEventMouseButton and event.is_action_pressed("left_click"):
		left_pressed = true
		last_position = event.position
	elif event is InputEventMouseButton and event.is_action_released("left_click"):
		left_pressed = false
	elif event is InputEventMouseMotion and left_pressed:
		var delta = event.position - last_position
		last_position = event.position
		self.rotate_y(-delta.x * 0.0010)
	if event is InputEventMouseButton and event.is_action_pressed("middle_click"):
		middle_pressed = true
		target_last_position = event.position
	elif event is InputEventMouseButton and event.is_action_released("middle_click"):
		middle_pressed = false
		camera_target.rotation_degrees=self.rotation_degrees
	elif event is InputEventMouseMotion and middle_pressed:
		var delta = event.position - target_last_position
		target_last_position = event.position
		camera_target.rotate_y(-delta.x * 0.0030)

func _physics_process(delta):
		# Forward as seen by the camera (OpenGL convention)
	#var view_forward = -camera.get_transform().basis.z
	#var view_right = -camera.get_transform().basis.x
	if !model_init:
		setup_body()
		model_init = true
	var view_forward = -target.get_transform().basis.z
	var view_right = -target.get_transform().basis.x
	# Forward as seen by the avatar
	var forward = Vector3(view_forward.x, 0.0, view_forward.z).normalized()
	var right = view_right
	toggle_timer = toggle_timer -delta
		# Some classic movement control
	var anim_player = get_node(global.char_model+"/AnimationPlayer")
	var cur_anim = anim_player.get_current_animation()
	var anim_state = cur_anim
	if toggle_timer <= 0:
		toggle_timer=0.25
		if anim_testing:
			anim_state=test_actions(delta,anim_state,right,forward)
		else:
			anim_state=actions(delta,anim_state,right,forward)
	if cur_anim != anim_state:
		anim_player.play(anim_state)
	# Calculate next position by adding the bit of distance walked during this frame
	var next_pos = get_translation() + motion.normalized() * (speed * delta)
	set_translation(next_pos)
	# Look forward
	target.look_at(next_pos+forward, Vector3(0,1,0))
	if(motion != Vector3()):
		# Used atan2 but you can also use Vector2(motion.x, -motion.z).angle()
		var angle = atan2(motion.x, -motion.z)
		#print("target angle is::", round(rad2deg(angle)), " (", str(motion), ")")
		Rotation(angle, delta);
		
func Rotation(angle,delta):
	var current_rot = Quat(target.get_transform().basis)
	var target_rot = Quat(Vector3(0,1,0), angle)
	var smooth_rot = current_rot.slerp(target_rot, delta * 5)
	#target.set_rotation(Matrix3(smooth_rot).get_euler())
	
func actions(delta,anim_state,right,forward):
	motion=Vector3()
	anim_state="idle_0"
	if Input.is_action_pressed("move_lt"):
		motion += right
		anim_state = "walk_lt"
	if Input.is_action_pressed("move_rt"):
		motion -= right
		anim_state = "walk_rt"
	if Input.is_action_pressed("move_fw"):
		motion += forward
		anim_state = "walk_fw"
	if Input.is_action_pressed("move_bw"):
		motion -= forward
		anim_state = "walk_bw"
		
func test_actions(delta,anim_state,right,forward):
	#reset motion and anim_state
	motion=Vector3()
	anim_state="idle_0"
	if Input.is_action_pressed("working"):
		is_working = !is_working
	if is_working:
		if Input.is_action_pressed("move_lt"):
			anim_state = "high_work_0"
			toggle_timer = 3.0
		if Input.is_action_pressed("move_rt"):
			anim_state = "high_work_1"
			toggle_timer = 3.0
		if Input.is_action_pressed("move_fw"):
			anim_state = "low_work_0"
			toggle_timer = 3.0
		if Input.is_action_pressed("move_bw"):
			anim_state = "low_work_1"
			toggle_timer = 3.0
	else:
		if Input.is_action_pressed("move_lt"):
			motion += right
			anim_state = "walk_lt"
		if Input.is_action_pressed("move_rt"):
			motion -= right
			anim_state = "walk_rt"
		if Input.is_action_pressed("is_crawling"):
			is_crawling = !is_crawling
		if Input.is_action_pressed("move_fw"):
			if is_crawling:
				if crawl_speed == 1:
					motion += forward
					anim_state = "crawl_1"
				if crawl_speed == 0:
					motion += forward
					anim_state = "crawl_0"
				if crawl_speed == 2:
					motion += forward
					anim_state = "crawl_2"
			else:
				motion += forward
				anim_state = "walk_fw"
				#unit_data.id =48
				#unit_data.print_values()
		if Input.is_action_pressed("move_bw"):
			motion -= forward
			anim_state = "walk_bw"
	if Input.is_action_pressed("has_weapon"):
		has_weapon = !has_weapon
	if Input.is_action_pressed("use_power"):
		use_power = !use_power
	if use_power:			
		if Input.is_action_pressed("attack0"):
			anim_state = "power_0"
			toggle_timer = 2.0
		if Input.is_action_pressed("attack1"):
			anim_state = "power_1"
			toggle_timer = 2.0
		if Input.is_action_pressed("attack2"):
			anim_state = "power_2"
			toggle_timer = 2.0
	else:
		if has_weapon == true:
			if Input.is_action_pressed("attack0"):
				anim_state = "melee_weapon_0"
			if Input.is_action_pressed("attack1"):
				anim_state = "melee_weapon_1"
			if Input.is_action_pressed("attack2"):
				anim_state = "melee_weapon_2"
		else:
			if Input.is_action_pressed("attack0"):
				anim_state = "melee_punch_0"
			if Input.is_action_pressed("attack1"):
				anim_state = "melee_punch_1"
			if Input.is_action_pressed("attack2"):
				anim_state = "melee_punch_2"
	return anim_state

func setup_body():
	#head
	var head_bone = get_node(global.char_model+"/Skeleton/head")
	#var head = preload("res://Models/000_static_body_parts_x-bot/head/B/Bane_Lineage2/Bane_Lineage2.tscn")
	#var head = preload("res://Models/000_static_body_parts_x-bot/head/0_template_xbot/0_template_xbot.tscn")
	#var head = preload("res://Models/000_static_body_parts_x-bot/head/S/Skye_PawPatrolRescueRun/Skye_PawPatrolRescueRun.tscn")
	#var head = preload("res://Models/000_static_body_parts_x-bot/head/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	#var head = preload("res://Models/000_static_body_parts_x-bot/head/B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld.tscn")
	#var head = preload("res://Models/000_static_body_parts_x-bot/head/B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld.tscn")
	var head = preload("res://Models/000_static_body_parts_x-bot/head/G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld.tscn")
	head_bone.add_child(head.instance())
	#shoulders
	var left_shoulder_bone = get_node(global.char_model+"/Skeleton/left_shoulder")
	var left_shoulder = preload("res://Models/000_static_body_parts_x-bot/shoulder_left/B/Bane_Lineage2/Bane_Lineage2.tscn")
	left_shoulder_bone.add_child(left_shoulder.instance())
	var right_shoulder_bone = get_node(global.char_model+"/Skeleton/right_shoulder")
	var right_shoulder = preload("res://Models/000_static_body_parts_x-bot/shoulder_right/B/Bane_Lineage2/Bane_Lineage2.tscn")
	right_shoulder_bone.add_child(right_shoulder.instance())
	#chest
	var chest_bone = get_node(global.char_model+"/Skeleton/chest")
	#var chest = preload("res://Models/000_static_body_parts_x-bot/chest/0_template_xbot/0_template_xbot.tscn")
	#var chest = preload("res://Models/000_static_body_parts_x-bot/chest/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	var chest = preload("res://Models/000_static_body_parts_x-bot/chest/B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld.tscn")
	chest_bone.add_child(chest.instance())
	#torso
	var torso_bone = get_node(global.char_model+"/Skeleton/torso")
	#var torso = preload("res://Models/000_static_body_parts_x-bot/torso/0_template_xbot/0_template_xbot.tscn")
	#var torso = preload("res://Models/000_static_body_parts_x-bot/torso/L/LivingArmorEarth_GhostbustersWorld/LivingArmorEarth_GhostbustersWorld.tscn")
	var torso = preload("res://Models/000_static_body_parts_x-bot/torso/B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld.tscn")
	torso_bone.add_child(torso.instance())
	#waist
	var waist_bone = get_node(global.char_model+"/Skeleton/waist")
	#var waist = preload("res://Models/000_static_body_parts_x-bot/waist/0_template_xbot/0_template_xbot.tscn")
	#var waist = preload("res://Models/000_static_body_parts_x-bot/waist/L/LivingArmorEarth_GhostbustersWorld/LivingArmorEarth_GhostbustersWorld.tscn")
	var waist = preload("res://Models/000_static_body_parts_x-bot/waist/B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld.tscn")
	waist_bone.add_child(waist.instance())
	#hips
	var hip_bone = get_node(global.char_model+"/Skeleton/hips")
	#var hip = preload("res://Models/000_static_body_parts_x-bot/hips/B/Bane_Lineage2/Bane_Lineage2.tscn")
	var hip = preload("res://Models/000_static_body_parts_x-bot/hips/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	#var hip = preload("res://Models/000_static_body_parts_x-bot/hips/0_template_xbot/0_template_xbot.tscn")
	hip_bone.add_child(hip.instance())
	#biceps
	var bicep_right_bone = get_node(global.char_model+"/Skeleton/bicep_right")
	#var bicep_right = preload("res://Models/000_static_body_parts_x-bot/bicep_right/0_template_xbot/0_template_xbot.tscn")
	var bicep_right = preload("res://Models/000_static_body_parts_x-bot/bicep_right/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	bicep_right_bone.add_child(bicep_right.instance())
	var bicep_left_bone = get_node(global.char_model+"/Skeleton/bicep_left")
	#var bicep_left = preload("res://Models/000_static_body_parts_x-bot/bicep_left/0_template_xbot/0_template_xbot.tscn")
	var bicep_left = preload("res://Models/000_static_body_parts_x-bot/bicep_left/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	bicep_left_bone.add_child(bicep_left.instance())
	#elbows
	var forearm_right_bone = get_node(global.char_model+"/Skeleton/forearm_right")
	var elbow_right = preload("res://Models/000_static_body_parts_x-bot/elbow_right/0_template_xbot/0_template_xbot_black.tscn")
	forearm_right_bone.add_child(elbow_right.instance())
	var forearm_left_bone = get_node(global.char_model+"/Skeleton/forearm_left")
	var elbow_left = preload("res://Models/000_static_body_parts_x-bot/elbow_left/0_template_xbot/0_template_xbot_black.tscn")
	forearm_left_bone.add_child(elbow_left.instance())
	#forearms
	#var forearm_right = preload("res://Models/000_static_body_parts_x-bot/forearm_right/0_template_xbot/0_template_xbot.tscn")
	var forearm_right = preload("res://Models/000_static_body_parts_x-bot/forearm_right/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	forearm_right_bone.add_child(forearm_right.instance())
	#var forearm_left = preload("res://Models/000_static_body_parts_x-bot/forearm_left/0_template_xbot/0_template_xbot.tscn")
	var forearm_left = preload("res://Models/000_static_body_parts_x-bot/forearm_left/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	forearm_left_bone.add_child(forearm_left.instance())
#	#hands
	var hand_right_bone = get_node(global.char_model+"/Skeleton/hand_right")
	#var hand_right = preload("res://Models/000_static_body_parts_x-bot/hand_right/0_template_xbot/0_template_xbot.tscn")
	#var hand_right = preload("res://Models/000_static_body_parts_x-bot/hand_right/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	var hand_right = preload("res://Models/000_static_body_parts_x-bot/hand_right/B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld.tscn")
	hand_right_bone.add_child(hand_right.instance())
	var hand_left_bone = get_node(global.char_model+"/Skeleton/hand_left")
	#var hand_left = preload("res://Models/000_static_body_parts_x-bot/hand_left/0_template_xbot/0_template_xbot.tscn")
	#var hand_left = preload("res://Models/000_static_body_parts_x-bot/hand_left/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	var hand_left = preload("res://Models/000_static_body_parts_x-bot/hand_left/B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld.tscn")
	hand_left_bone.add_child(hand_left.instance())
#	#thighs
	var thigh_right_bone = get_node(global.char_model+"/Skeleton/thigh_right")
	#var thigh_right = preload("res://Models/000_static_body_parts_x-bot/thigh_right/0_template_xbot/0_template_xbot.tscn")
	var thigh_right = preload("res://Models/000_static_body_parts_x-bot/thigh_right/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	thigh_right_bone.add_child(thigh_right.instance())
	var thigh_left_bone = get_node(global.char_model+"/Skeleton/thigh_left")
	#var thigh_left = preload("res://Models/000_static_body_parts_x-bot/thigh_left/0_template_xbot/0_template_xbot.tscn")
	var thigh_left = preload("res://Models/000_static_body_parts_x-bot/thigh_left/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	thigh_left_bone.add_child(thigh_left.instance())
#	#calves
	var calf_right_bone = get_node(global.char_model+"/Skeleton/calf_right")
	#var calf_right = preload("res://Models/000_static_body_parts_x-bot/calf_right/0_template_xbot/0_template_xbot.tscn")
	var calf_right = preload("res://Models/000_static_body_parts_x-bot/calf_right/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	calf_right_bone.add_child(calf_right.instance())
	var calf_left_bone = get_node(global.char_model+"/Skeleton/calf_left")
	#var calf_left = preload("res://Models/000_static_body_parts_x-bot/calf_left/0_template_xbot/0_template_xbot.tscn")
	var calf_left = preload("res://Models/000_static_body_parts_x-bot/calf_left/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	calf_left_bone.add_child(calf_left.instance())
#	#knees
	var knee_right = preload("res://Models/000_static_body_parts_x-bot/knee_right/0_template_xbot/0_template_xbot.tscn")
	calf_right_bone.add_child(knee_right.instance())
	var knee_left = preload("res://Models/000_static_body_parts_x-bot/knee_left/0_template_xbot/0_template_xbot.tscn")
	calf_left_bone.add_child(knee_left.instance())
#	#feet
	var foot_right_bone = get_node(global.char_model+"/Skeleton/foot_right")
	#var foot_right = preload("res://Models/000_static_body_parts_x-bot/foot_right/0_template_xbot/0_template_xbot.tscn")
	var foot_right = preload("res://Models/000_static_body_parts_x-bot/foot_right/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	foot_right_bone.add_child(foot_right.instance())
	var foot_left_bone = get_node(global.char_model+"/Skeleton/foot_left")
	#var foot_left = preload("res://Models/000_static_body_parts_x-bot/foot_left/0_template_xbot/0_template_xbot.tscn")
	var foot_left = preload("res://Models/000_static_body_parts_x-bot/foot_left/V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld.tscn")
	foot_left_bone.add_child(foot_left.instance())