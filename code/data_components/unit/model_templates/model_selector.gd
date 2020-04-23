var group_model_prefix = "res://code/data_components/unit/model_templates/"
# 2- below for testing only
var type_list=["titan","guardian","lt","soldier","misc"]
var gender_list=["male","female","neutral"]

func get_model_dict(nation,group,type,gender):
	var model_dict={}
	var nation_sub="night_horde"
	var group_sub="gozarian"
	var type_spot=randi()%5
	var type_sub=type_list[type_spot]
	#var type_sub="guardian"
	var gen_spot=randi()%3
	var gender_sub=gender_list[gen_spot]
	#var gender_sub="male"
	#model_dict["head"]=get_model_path_head(nation,group,type,gender)
	#model_dict["body"]=get_model_dict_body(nation,group,type,gender)
	model_dict["head"]=get_model_path_head(nation_sub,group_sub,type_sub,gender_sub)
	model_dict["body"]=get_model_dict_body(nation_sub,group_sub,type_sub,gender_sub)
	return model_dict

func get_model_path_head(nation,group,type,gender):
	var template=load(group_model_prefix+nation+"/"+group+"_templates.gd").new()
	return get_type_model_headpath(template,type,gender)

func get_model_dict_body(nation,group,type,gender):
	var template=load(group_model_prefix+nation+"/"+group+"_templates.gd").new()
	return get_type_model_bodypath(template,type,gender)

# Heads are an additive list, titans are the most selective with misc being least
func get_type_model_headpath(template,type,gender):
	var heads=[]
	heads=template.get_titan_heads(heads,gender)
	if type=="titan":
		return select_path(heads)
	heads=template.get_guardian_heads(heads,gender)
	if type=="guardian":
		return select_path(heads)
	heads=template.get_lt_hunter_heads(heads,gender)
	if type=="lt" or type=="hunter":
		return select_path(heads)
	heads=template.get_soldier_heads(heads,gender)
	if type=="soldier":
		return select_path(heads)
	heads=template.get_misc_heads(heads,gender)
	# should catch the if misc case
	return select_path(heads)

func get_type_model_bodypath(template,type,gender):
	var bodies=[]
	if type=="titan":
		bodies=template.get_titan_bodies(gender)
	if type=="guardian":
		bodies=template.get_guardian_bodies(gender)
	if type=="lt" or type=="hunter":
		bodies=template.get_lt_hunter_bodies(gender)
	if type=="soldier":
		bodies=template.get_soldier_bodies(gender)
	if type=="misc":
		bodies=template.get_misc_bodies(gender)
	return select_path(bodies)

func select_path(model_list):
	if model_list.empty():
		print("No models added to list...")
		return ""
	else:
		var spot=randi()%model_list.size()
		return model_list[spot]