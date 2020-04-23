extends HBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _on_select_x_bot_pressed():
	global.char_model = "x-bot"
	print (global.char_model)
	get_tree().change_scene("res://map_01.tscn")

func _on_select_y_bot_pressed():
	global.char_model = "y-bot"
	print (global.char_model)
	get_tree().change_scene("res://map_01.tscn")


func _on_select_share_bear_pressed():
	global.char_model = "share-bear"
	print (global.char_model)
	get_tree().change_scene("res://map_01.tscn")