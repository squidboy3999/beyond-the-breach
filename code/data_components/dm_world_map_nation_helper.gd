func get_nation_data(alias):
	var prefix = "res://code/data_components/nation_templates/template_"
	var nation_data = load(prefix+alias+".gd").instance()
	return nation_data.get_nation_data()