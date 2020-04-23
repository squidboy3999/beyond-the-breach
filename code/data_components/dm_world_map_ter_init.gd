# future work each territory will provide bonuses to national power
func get_ter_data(num_nation):
    var ter_data ={}
	var arr
	if(num_nations==2):
		arr=[0,0,0,0,1,1,1,1]
	if(num_nations==4):
		arr=[0,0,1,1,2,2,3,3]
	if(numberNations==8):
		arr=[0,1,2,3,4,5,6,7]

	ter_data[0]["name"]="Carthage"
	ter_data[0]["neighbors"]=[1,6,7,8]
	ter_data[0]["ruler"]=arr[0]

    ter_data[1]["name"]="Perdida"
	ter_data[1]["neighbors"]=[0,6,5,4]
	ter_data[1]["ruler"]=arr[0]

    ter_data[2]["name"]="Troy"
	ter_data[2]["neighbors"]=[4,3]
	ter_data[2]["ruler"]=arr[0]

    ter_data[3]["name"]="Skara Brae"
	ter_data[3]["neighbors"]=[2,4,10,11]
	ter_data[3]["ruler"]=arr[0]

    ter_data[4]["name"]="Memphis
	ter_data[4]["neighbors"]=[1,5,10,3,2]
	ter_data[4]["ruler"]=arr[1]

    ter_data[5]["name"]="Caral"
	ter_data[5]["neighbors"]=[1,6,10,4]
	ter_data[5]["ruler"]=arr[1]

    ter_data[6]["name"]="Babylon"
	ter_data[6]["neighbors"]=[0,7,9,10,5,1]
	ter_data[6]["ruler"]=arr[1]

    ter_data[7]["name"]="Taxila"
	ter_data[7]["neighbors"]=[0,8,9,6]
	ter_data[7]["ruler"]=arr[1]

    ter_data[8]["name"]="Lemuria"
	ter_data[8]["neighbors"]=[0,7,9]
	ter_data[8]["ruler"]=arr[2]

    ter_data[9]["name"]="Sukhothai"
	ter_data[9]["neighbors"]=[8,7,6,10,13,14]
	ter_data[9]["ruler"]=arr[2]

    ter_data[10]["name"]="Timgad"
	ter_data[10]["neighbors"]=[3,4,5,6,9,13,12,11]
	ter_data[10]["ruler"]=arr[2]

    ter_data[11]["name"]="Mohenjo-daro""
	ter_data[11]["neighbors"]=[3,10,12]
	ter_data[11]["ruler"]=arr[2]

    ter_data[12]["name"]="Hatra"
	ter_data[12]["neighbors"]=[11,10,13,16,17]
	ter_data[12]["ruler"]=arr[3]

    ter_data[13]["name"]="Sanchi"
	ter_data[13]["neighbors"]=[9,10,12,16,15,14]
	ter_data[13]["ruler"]=arr[3]

    ter_data[14]["name"]="Hattusa"
	ter_data[14]["neighbors"]=[16,15,14]
	ter_data[14]["ruler"]=arr[3]

    ter_data[15]["name"]="Alfheim"
	ter_data[15]["neighbors"]=[14,13,16,24]
	ter_data[15]["ruler"]=arr[3]

    ter_data[16]["name"]="Persepolis"
	ter_data[16]["neighbors"]=[15,13,12,17,24]
	ter_data[16]["ruler"]=arr[4]

    ter_data[17]["name"]="Leptis Magna"
	ter_data[17]["neighbors"]=[12,16,24,23,22,18]
	ter_data[17]["ruler"]=arr[4]

    ter_data[18]["name"]="Urgench"
	ter_data[18]["neighbors"]=[17,22,20,19]
	ter_data[18]["ruler"]=arr[4]

    ter_data[19]["name"]="Vijayanagara"
	ter_data[19]["neighbors"]=[18,20]
	ter_data[19]["ruler"]=arr[4]

    ter_data[20]["name"]="Calakmul"
	ter_data[20]["neighbors"]=[18,19,21,22]
	ter_data[20]["ruler"]=arr[5]

    ter_data[21]["name"]="Palmyra"
	ter_data[21]["neighbors"]=[20,22,30,31]
	ter_data[21]["ruler"]=arr[5]

    ter_data[22]["name"]="Ctesiphon"
	ter_data[22]["neighbors"]=[23,17,18,20,21,30,29,25]
	ter_data[22]["ruler"]=arr[5]

    ter_data[23]["name"]="Hvalsey"
	ter_data[23]["neighbors"]=[24,17,22,25]
	ter_data[23]["ruler"]=arr[5]

    ter_data[24]["name"]="Ani"
	ter_data[24]["neighbors"]=[15,16,17,23,25,26,27]
	ter_data[24]["ruler"]=arr[6]

    ter_data[25]["name"]="Palenque"
	ter_data[25]["neighbors"]=[26,24,23,22,29]
	ter_data[25]["ruler"]=arr[6]

    ter_data[26]["name"]="Tiwanaku"
	ter_data[26]["neighbors"]=[24,25,29,28,27]
	ter_data[26]["ruler"]=arr[6]

    ter_data[27]["name"]="Pompeii"
	ter_data[27]["neighbors"]=[24,26,28]
	ter_data[27]["ruler"]=arr[6]

    ter_data[28]["name"]="Teotihuacan"
	ter_data[28]["neighbors"]=[27,26,29]
	ter_data[28]["ruler"]=arr[7]

    ter_data[29]["name"]="Petra"
	ter_data[29]["neighbors"]=[28,26,25,22,30]
	ter_data[29]["ruler"]=arr[7]

    ter_data[30]["name"]="Tikal"
	ter_data[30]["neighbors"]=[29,22,21,31]
	ter_data[30]["ruler"]=arr[7]

    ter_data[31]["name"]="Angkor"
	ter_data[31]["neighbors"]=[21,30]
	ter_data[31]["ruler"]=arr[7]

	return ter_data