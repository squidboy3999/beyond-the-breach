var heads_path

func get_titan_heads(heads,gender):
	heads.append("B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld")
	if gender!="female":
		heads.append("B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld")
		heads.append("S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld")
	if gender!="male":
		heads.append("G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld")
	return heads

func get_guardian_heads(heads,gender):
	heads.append("A/Azetlor_GhostbustersWorld/Azetlor_GhostbustersWorld")
	heads.append("S/Sandman_GhostbustersWorld/Sandman_GhostbustersWorld")
	heads.append("V/VinzClortho_GhostbustersWorld/VinzClortho_GhostbustersWorld")
	heads.append("Z/Zuul_GhostbustersWorld/Zuul_GhostbustersWorld")
	if gender!="male":
		heads.append("N/NineTailedFox_GhostbustersWorld/NineTailedFox_GhostbustersWorld")
	if gender!="female":
		heads.append("V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld")
		heads.append("R/Ravana_GhostbustersWorld/Ravana_GhostbustersWorld")
		heads.append("B/Boogieman_GhostbustersWorld/Boogieman_GhostbustersWorld")
		heads.append("G/Ghash_GhostbustersWorld/Ghash_GhostbustersWorld")
		heads.append("I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld")
		heads.append("I/Idulnas_GhostbustersWorld/Idulnas_GhostbustersWorld")
		heads.append("R/Ringleader_GhostbustersWorld/Ringleader_GhostbustersWorld")
	return heads

func get_lt_hunter_heads(heads,gender):
	heads.append("A/Abaia_GhostbustersWorld/Abaia_GhostbustersWorld")
	heads.append("F/FeiFei_GhostbustersWorld/FeiFei_GhostbustersWorld")
	heads.append("G/Grootslang_GhostbustersWorld/Grootslang_GhostbustersWorld")
	heads.append("L/Lotan_GhostbustersWorld/Lotan_GhostbustersWorld")
	heads.append("Q/Quetzalcohuatl_GhostbustersWorld/Quetzalcohuatl_GhostbustersWorld")
	if gender!="female":
		heads.append("D/DoctorMacarther_GhostbustersWorld/DoctorMacarther_GhostbustersWorld")
		heads.append("E/EthanKaine_GhostbustersWorld/EthanKaine_GhostbustersWorld")
		heads.append("G/Grundel_GhostbustersWorld/Grundel_GhostbustersWorld")
		heads.append("J/Jeosungsaja_GhostbustersWorld/Jeosungsaja_GhostbustersWorld")
		heads.append("M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld")
		heads.append("N/NunzioScoleri_GhostbustersWorld/NunzioScoleri_GhostbustersWorld")
		heads.append("T/TonyScoleri_GhostbustersWorld/TonyScoleri_GhostbustersWorld")
	if gender!="male":
		heads.append("F/FlatwoodsMonster_GhostbustersWorld/FlatwoodsMonster_GhostbustersWorld")
	return heads

func get_soldier_heads(heads,gender):
	heads.append("B/Boghound_GhostbustersWorld/Boghound_GhostbustersWorld")
	heads.append("C/CatSith_GhostbustersWorld/CatSith_GhostbustersWorld")
	heads.append("C/ChristmasFuture_GhostbustersWorld/ChristmasFuture_GhostbustersWorld")
	heads.append("C/Chupacabra_GhostbustersWorld/Chupacabra_GhostbustersWorld")
	heads.append("C/Clamper_GhostbustersWorld/Clamper_GhostbustersWorld")
	heads.append("D/Death_GhostbustersWorld/Death_GhostbustersWorld")
	heads.append("G/GhostBuffalo_GhostbustersWorld/GhostBuffalo_GhostbustersWorld")
	heads.append("G/Goast_GhostbustersWorld/Goast_GhostbustersWorld")
	heads.append("M/ManEatingTree_GhostbustersWorld/ManEatingTree_GhostbustersWorld")
	heads.append("N/Nekomata_GhostbustersWorld/Nekomata_GhostbustersWorld")
	heads.append("S/SpiderQueenCenter_GhostbustersWorld/SpiderQueenCenter_GhostbustersWorld")
	heads.append("T/Tempus_GhostbustersWorld/Tempus_GhostbustersWorld")
	heads.append("T/TheatreGhost_GhostbustersWorld/TheatreGhost_GhostbustersWorld")
	if gender!="female":
		heads.append("T/Tango_GhostbustersWorld/Tango_GhostbustersWorld")
		heads.append("B/BellhopGhost_GhostbustersWorld/BellhopGhost_GhostbustersWorld")
		heads.append("B/BlueLou_GhostbustersWorld/BlueLou_GhostbustersWorld")
		heads.append("B/BusDriver_GhostbustersWorld/BusDriver_GhostbustersWorld")
		heads.append("C/ChefGhost_GhostbustersWorld/ChefGhost_GhostbustersWorld")
		heads.append("G/Genie_GhostbustersWorld/Genie_GhostbustersWorld")
		heads.append("G/Gremlin_GhostbustersWorld/Gremlin_GhostbustersWorld")
		heads.append("J/Jiangshi_GhostbustersWorld/Jiangshi_GhostbustersWorld")
		heads.append("L/Leprechaun_GhostbustersWorld/Leprechaun_GhostbustersWorld")
		heads.append("M/Menreiki_GhostbustersWorld/Menreiki_GhostbustersWorld")
		heads.append("P/Poltergeist_GhostbustersWorld/Poltergeist_GhostbustersWorld")
		heads.append("S/Slimer_GhostbustersWorld/Slimer_GhostbustersWorld")
		heads.append("S/Specter_GhostbustersWorld/Specter_GhostbustersWorld")
		heads.append("S/StingyJack_GhostbustersWorld/StingyJack_GhostbustersWorld")
		heads.append("T/Tengu_GhostbustersWorld/Tengu_GhostbustersWorld")
		heads.append("W/WashingtonSquareGhost_GhostbustersWorld/WashingtonSquareGhost_GhostbustersWorld")
		heads.append("X/Xiezhi_GhostbustersWorld/Xiezhi_GhostbustersWorld")
	if gender!="male":
		heads.append("B/BloodyMary_GhostbustersWorld/BloodyMary_GhostbustersWorld")
		heads.append("C/ChristmasPast_GhostbustersWorld/ChristmasPast_GhostbustersWorld")
		heads.append("C/Cuca_GhostbustersWorld/Cuca_GhostbustersWorld")
		heads.append("D/Dixie_GhostbustersWorld/Dixie_GhostbustersWorld")
		heads.append("E/EllenGold_GhostbustersWorld/EllenGold_GhostbustersWorld")
		heads.append("E/Enraenra_GhostbustersWorld/Enraenra_GhostbustersWorld")
		heads.append("G/GertrudeAldridge_GhostbustersWorld/GertrudeAldridge_GhostbustersWorld")
		heads.append("L/LadySlimer_GhostbustersWorld/LadySlimer_GhostbustersWorld")
		heads.append("L/LibrariabScary_GhostbustersWorld/LibrariabScary_GhostbustersWorld")
		heads.append("L/Librarian_GhostbustersWorld/Librarian_GhostbustersWorld")
		heads.append("L/LibrarianPlaymobile_GhostbustersWorld/LibrarianPlaymobile_GhostbustersWorld")
		heads.append("P/Pheonix_GhostbustersWorld/Pheonix_GhostbustersWorld")
		heads.append("S/SixTailedFox_GhostbustersWorld/SixTailedFox_GhostbustersWorld")
		heads.append("T/ThreeTailedFox_GhostbustersWorld/ThreeTailedFox_GhostbustersWorld")
		heads.append("V/VigoMinion_GhostbustersWorld/VigoMinion_GhostbustersWorld")
	return heads

func get_misc_heads(heads,gender):
	heads.append("A/AchiraMInion_GhostbustersWorld/AchiraMInion_GhostbustersWorld")
	heads.append("C/ChairmanMinion_GhostbustersWorld/ChairmanMinion_GhostbustersWorld")
	heads.append("E/EctoClone_GhostbustersWorld/EctoClone_GhostbustersWorld")
	heads.append("E/EggGhost_GhostbustersWorld/EggGhost_GhostbustersWorld")
	heads.append("G/Golem_GhostbustersWorld/Golem_GhostbustersWorld")
	heads.append("K/KozaraiMinion_GhostbustersWorld/KozaraiMinion_GhostbustersWorld")
	heads.append("L/LivingArmor_GhostbustersWorld/LivingArmor_GhostbustersWorld")
	heads.append("L/Lizard_GhostbustersWorld/Lizard_GhostbustersWorld")
	heads.append("M/Mandragora_GhostbustersWorld/Mandragora_GhostbustersWorld")
	heads.append("M/Mimic_GhostbustersWorld/Mimic_GhostbustersWorld")
	heads.append("R/RingleaderMinion_GhostbustersWorld/RingleaderMinion_GhostbustersWorld")
	heads.append("S/SpiderQueenMinion_GhostbustersWorld/SpiderQueenMinion_GhostbustersWorld")
	heads.append("S/SubwayRat_GhostbustersWorld/SubwayRat_GhostbustersWorld")
	heads.append("W/WispDark_GhostbustersWorld/WispDark_GhostbustersWorld")
	heads.append("W/WispEarth_GhostbustersWorld/WispEarth_GhostbustersWorld")
	if gender!="female":
		heads.append("K/Kappa_GhostbustersWorld/Kappa_GhostbustersWorld")
		heads.append("M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld")
		heads.append("G/GhostBalloon1_GhostbustersWorld/GhostBalloon1_GhostbustersWorld")
		heads.append("G/GhostBalloon2_GhostbustersWorld/GhostBalloon2_GhostbustersWorld")
		heads.append("G/GhostBalloon3_GhostbustersWorld/GhostBalloon3_GhostbustersWorld")
	#if gender!="male":
	#	heads.append("")
	return heads

#bodies will only give male bodies to males and female bodies to females, both
#receive neutral bodies. Heads on the other hand produce all heads for neutral 
#and only gate given female heads to males and vice versa.

func get_titan_bodies(gender):
	var bodies=[]
	var behemoth={}
	behemoth=get_behemoth_body()
	bodies.append(behemoth)
	if gender=="female":
		var gozer={}
		gozer=get_gozer_body()
		bodies.append(gozer)
	elif gender=="male":
		var staypuft={}
		var boogaloo={}
		staypuft=get_staypuft_body()
		boogaloo=get_boogaloo_body()
		bodies.append(staypuft)
		bodies.append(boogaloo)
	return bodies

func get_guardian_bodies(gender):
	var bodies=[]
	var azetlor={}
	azetlor=get_azetlor_body()
	bodies.append(azetlor)
	if gender=="female":
		var gozervigo={}
		gozervigo=get_gozervigo_body()
		bodies.append(gozervigo)
	elif gender=="male":
		var vigo={}
		vigo=get_vigo_body()
		bodies.append(vigo)
	return bodies

func get_lt_hunter_bodies(gender):
	var bodies=[]
	var hm={}
	hm=get_hungrymanitou_body()
	bodies.append(hm)
	if gender=="female":
		var flatwoods={}
		flatwoods=get_flatwoods_body()
		bodies.append(flatwoods)
	elif gender=="male":
		var mayhem={}
		mayhem=get_mayhem_body()
		bodies.append(mayhem)
	return bodies

func get_soldier_bodies(gender):
	var bodies=[]
	var icon={}
	icon=get_iconghost_body()
	bodies.append(icon)
	if gender=="female":
		var vigominion={}
		vigominion=get_vigominion_body()
		bodies.append(vigominion)
	elif gender=="male":
		var tango={}
		tango=get_tango_body()
		bodies.append(tango)
	return bodies

func get_misc_bodies(gender):
	var bodies=[]
	var livingarmor={}
	livingarmor=get_livingarmor_body()
	bodies.append(livingarmor)
	if gender=="female":
		var misc={}
		misc=get_misc_body()
		bodies.append(misc)
	elif gender=="male":
		var mayhemminion={}
		mayhemminion=get_mayhemminion_body()
		bodies.append(mayhemminion)
	return bodies

# ---- titan bodies ----
# neutral
func get_behemoth_body():
	var behemoth ={}
	behemoth["skeleton"]="xbot_split_mixamo_s2_w1"
	behemoth["shoulder_left"]="B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld"
	behemoth["shoulder_right"]="B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld"
	behemoth["chest"]="B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld"
	behemoth["torso"]="B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld"
	behemoth["waist"]="B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld"
	behemoth["hips"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["bicep_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["bicep_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["elbow_left"]="0_template_xbot/0_template_xbot_black"
	behemoth["elbow_right"]="0_template_xbot/0_template_xbot_black"
	behemoth["forearm_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["forearm_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["hand_left"]="B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld"
	behemoth["hand_right"]="B/Behemoth_GhostbustersWorld/Behemoth_GhostbustersWorld"
	behemoth["thigh_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["thigh_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["knee_left"]="0_template_xbot/0_template_xbot"
	behemoth["knee_right"]="0_template_xbot/0_template_xbot"
	behemoth["calf_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["calf_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["foot_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	behemoth["foot_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	return behemoth

# male
func get_boogaloo_body():
	var boogaloo ={}
	boogaloo["skeleton"]="xbot_split_mixamo_s2_w1"
	boogaloo["shoulder_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["shoulder_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["chest"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["torso"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["waist"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["hips"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["bicep_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["bicep_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["elbow_left"]="0_template_xbot/0_template_xbot_black"
	boogaloo["elbow_right"]="0_template_xbot/0_template_xbot_black"
	boogaloo["forearm_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["forearm_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["hand_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["hand_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["thigh_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["thigh_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["knee_left"]="0_template_xbot/0_template_xbot"
	boogaloo["knee_right"]="0_template_xbot/0_template_xbot"
	boogaloo["calf_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["calf_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["foot_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	boogaloo["foot_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	return boogaloo

func get_staypuft_body():
	var staypuft ={}
	staypuft["skeleton"]="xbot_split_mixamo_s2_w1"
	staypuft["shoulder_left"]="0_template_xbot/0_template_xbot"
	staypuft["shoulder_right"]="0_template_xbot/0_template_xbot"
	staypuft["chest"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["torso"]="S/Staypuft_GhostbustersWorld/Staypuft_GhostbustersWorld"
	staypuft["waist"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["hips"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["bicep_left"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["bicep_right"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["elbow_left"]="0_template_xbot/0_template_xbot_black"
	staypuft["elbow_right"]="0_template_xbot/0_template_xbot_black"
	staypuft["forearm_left"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["forearm_right"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["hand_left"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["hand_right"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["thigh_left"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["thigh_right"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["knee_left"]="0_template_xbot/0_template_xbot"
	staypuft["knee_right"]="0_template_xbot/0_template_xbot"
	staypuft["calf_left"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["calf_right"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["foot_left"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	staypuft["foot_right"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	return staypuft

# female
func get_gozer_body():
	var gozer ={}
	gozer["skeleton"]="xbot_split_mixamo_s2_w1"
	gozer["shoulder_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["shoulder_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["chest"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["torso"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["waist"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["hips"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["bicep_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["bicep_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["elbow_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["elbow_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["forearm_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["forearm_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["hand_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["hand_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["thigh_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["thigh_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["knee_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["knee_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbusterWorld"
	gozer["calf_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["calf_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["foot_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozer["foot_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	return gozer

# ---- guardian bodies ----
# neutral
func get_azetlor_body():
	var azetlor ={}
	azetlor["skeleton"]="xbot_split_mixamo_s2_w1"
	azetlor["shoulder_left"]="A/Azetlor_GhostbustersWorld/Azetlor_GhostbustersWorld"
	azetlor["shoulder_right"]="A/Azetlor_GhostbustersWorld/Azetlor_GhostbustersWorld"
	azetlor["chest"]="A/Azetlor_GhostbustersWorld/Azetlor_GhostbustersWorld"
	azetlor["torso"]="L/LivingArmorEarth_GhostbustersWorld/LivingArmorEarth_GhostbustersWorld"
	azetlor["waist"]="L/LivingArmorEarth_GhostbustersWorld/LivingArmorEarth_GhostbustersWorld"
	azetlor["hips"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	azetlor["bicep_left"]="A/Azetlor_GhostbustersWorld/Azetlor_Ghostbusters"
	azetlor["bicep_right"]="A/Azetlor_GhostbustersWorld/Azetlor_GhostbustersWorld"
	azetlor["elbow_left"]="0_template_xbot/0_template_xbot_black"
	azetlor["elbow_right"]="0_template_xbot/0_template_xbot_black"
	azetlor["forearm_left"]="A/Azetlor_GhostbustersWorld/Azetlor_GhostbustersWorld"
	azetlor["forearm_right"]="A/Azetlor_GhostbustersWorld/Azetlor_GhostbustersWorld"
	azetlor["hand_left"]="A/Azetlor_GhostbustersWorld/Azetlor_GhostbustersWorld"
	azetlor["hand_right"]="A/Azetlor_GhostbustersWorld/Azetlor_GhostbustersWorld"
	azetlor["thigh_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	azetlor["thigh_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	azetlor["knee_left"]="0_template_xbot/0_template_xbot"
	azetlor["knee_right"]="0_template_xbot/0_template_xbot"
	azetlor["calf_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	azetlor["calf_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	azetlor["foot_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	azetlor["foot_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	return azetlor

# male
func get_vigo_body():
	var vigo ={}
	vigo["skeleton"]="xbot_split_mixamo_s2_w1"
	vigo["shoulder_left"]="0_template_xbot/0_template_xbot"
	vigo["shoulder_right"]="0_template_xbot/0_template_xbot"
	vigo["chest"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["torso"]="L/LivingArmorEarth_GhostbustersWorld/LivingArmorEarth_GhostbustersWorld"
	vigo["waist"]="L/LivingArmorEarth_GhostbustersWorld/LivingArmorEarth_GhostbustersWorld"
	vigo["hips"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["bicep_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["bicep_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["elbow_left"]="0_template_xbot/0_template_xbot_black"
	vigo["elbow_right"]="0_template_xbot/0_template_xbot_black"
	vigo["forearm_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["forearm_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["hand_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["hand_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["thigh_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["thigh_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["knee_left"]="0_template_xbot/0_template_xbot"
	vigo["knee_right"]="0_template_xbot/0_template_xbot"
	vigo["calf_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["calf_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["foot_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	vigo["foot_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	return vigo

# female
func get_gozervigo_body():
	var gozervigo ={}
	gozervigo["skeleton"]="xbot_split_mixamo_s2_w1"
	gozervigo["shoulder_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["shoulder_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["chest"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	gozervigo["torso"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["waist"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["hips"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	gozervigo["bicep_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["bicep_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["elbow_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["elbow_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["forearm_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	gozervigo["forearm_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	gozervigo["hand_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	gozervigo["hand_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	gozervigo["thigh_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["thigh_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["knee_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	gozervigo["knee_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbusterWorld"
	gozervigo["calf_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	gozervigo["calf_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	gozervigo["foot_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	gozervigo["foot_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	return gozervigo

# ---- lt and hunter bodies ----
# neutral
func get_hungrymanitou_body():
	var hm ={}
	hm["skeleton"]="xbot_split_mixamo_s2_w1"
	hm["shoulder_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["shoulder_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["chest"]="H/HungryManitou_GhostbustersWorld/HungryManitou_GhostbustersWorld"
	hm["torso"]="H/HungryManitou_GhostbustersWorld/HungryManitou_GhostbustersWorld"
	hm["waist"]="H/HungryManitou_GhostbustersWorld/HungryManitou_GhostbustersWorld"
	hm["hips"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["bicep_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["bicep_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["elbow_left"]="0_template_xbot/0_template_xbot_black"
	hm["elbow_right"]="0_template_xbot/0_template_xbot_black"
	hm["forearm_left"]="H/HungryManitou_GhostbustersWorld/HungryManitou_GhostbustersWorld"
	hm["forearm_right"]="H/HungryManitou_GhostbustersWorld/HungryManitou_GhostbustersWorld"
	hm["hand_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["hand_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["thigh_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["thigh_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["knee_left"]="0_template_xbot/0_template_xbot"
	hm["knee_right"]="0_template_xbot/0_template_xbot"
	hm["calf_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["calf_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["foot_left"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	hm["foot_right"]="B/Boogaloo_GhostbustersWorld/Boogaloo_GhostbustersWorld"
	return hm

# male
func get_mayhem_body():
	var mayhem ={}
	mayhem["skeleton"]="xbot_split_mixamo_s2_w1"
	mayhem["shoulder_left"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["shoulder_right"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["chest"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["torso"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["waist"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["hips"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["bicep_left"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["bicep_right"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["elbow_left"]="0_template_xbot/0_template_xbot_black"
	mayhem["elbow_right"]="0_template_xbot/0_template_xbot_black"
	mayhem["forearm_left"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["forearm_right"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["hand_left"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["hand_right"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["thigh_left"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["thigh_right"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["knee_left"]="0_template_xbot/0_template_xbot"
	mayhem["knee_right"]="0_template_xbot/0_template_xbot"
	mayhem["calf_left"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["calf_right"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["foot_left"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	mayhem["foot_right"]="M/Mayhem_GhostbustersWorld/Mayhem_GhostbustersWorld"
	return mayhem

# female
func get_flatwoods_body():
	var flatwoods ={}
	flatwoods["skeleton"]="xbot_split_mixamo_s2_w1"
	flatwoods["shoulder_left"]="F/Flatwoods_GhostbustersWorld/Flatwoods_GhostbustersWorld"
	flatwoods["shoulder_right"]="F/Flatwoods_GhostbustersWorld/Flatwoods_GhostbustersWorld"
	flatwoods["chest"]="F/Flatwoods_GhostbustersWorld/Flatwoods_GhostbustersWorld"
	flatwoods["torso"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["waist"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["hips"]="F/Flatwoods_GhostbustersWorld/Flatwoods_GhostbustersWorld"
	flatwoods["bicep_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["bicep_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["elbow_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["elbow_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["forearm_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["forearm_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["hand_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["hand_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["thigh_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["thigh_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["knee_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["knee_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbusterWorld"
	flatwoods["calf_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["calf_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["foot_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	flatwoods["foot_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	return flatwoods

# ---- soldier bodies ----
# neutral
func get_iconghost_body():
	var icon ={}
	icon["skeleton"]="xbot_split_mixamo_s2_w1"
	icon["shoulder_left"]="0_template_xbot/0_template_xbot"
	icon["shoulder_right"]="0_template_xbot/0_template_xbot"
	icon["chest"]="I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld"
	icon["torso"]="I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld"
	icon["waist"]="I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld"
	icon["hips"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	icon["bicep_left"]="I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld"
	icon["bicep_right"]="I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld"
	icon["elbow_left"]="0_template_xbot/0_template_xbot_black"
	icon["elbow_right"]="0_template_xbot/0_template_xbot_black"
	icon["forearm_left"]="I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld"
	icon["forearm_right"]="I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld"
	icon["hand_left"]="I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld"
	icon["hand_right"]="I/IconGhost_GhostbustersWorld/IconGhost_GhostbustersWorld"
	icon["thigh_left"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	icon["thigh_right"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	icon["knee_left"]="0_template_xbot/0_template_xbot"
	icon["knee_right"]="0_template_xbot/0_template_xbot"
	icon["calf_left"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	icon["calf_right"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	icon["foot_left"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	icon["foot_right"]="S/StayPuft_GhostbustersWorld/StayPuft_GhostbustersWorld"
	return icon

# male
func get_tango_body():
	var tango ={}
	tango["skeleton"]="xbot_split_mixamo_s2_w1"
	tango["shoulder_left"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["shoulder_right"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["chest"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["torso"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["waist"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["hips"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["bicep_left"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["bicep_right"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["elbow_left"]="T/Tango_GhostbusterWorld/Tango_GhostbusterWorld"
	tango["elbow_right"]="T/Tango_GhostbusterWorld/Tango_GhostbusterWorld"
	tango["forearm_left"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["forearm_right"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["hand_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	tango["hand_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	tango["thigh_left"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["thigh_right"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["knee_left"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["knee_right"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["calf_left"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["calf_right"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["foot_left"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	tango["foot_right"]="T/Tango_GhostbustersWorld/Tango_GhostbustersWorld"
	return tango

# female
func get_vigominion_body():
	var vigominion ={}
	vigominion["skeleton"]="xbot_split_mixamo_s2_w1"
	vigominion["shoulder_left"]="0_template_xbot/0_template_xbot"
	vigominion["shoulder_right"]="0_template_xbot/0_template_xbot"
	vigominion["chest"]="V/VigoMinion_GhostbustersWorld/VigoMinion_GhostbustersWorld"
	vigominion["torso"]="V/VigoMinion_GhostbustersWorld/VigoMinion_GhostbustersWorld"
	vigominion["waist"]="V/VigoMinion_GhostbustersWorld/VigoMinion_GhostbustersWorld"
	vigominion["hips"]="V/VigoMinion_GhostbustersWorld/VigoMinion_GhostbustersWorld"
	vigominion["bicep_left"]="V/VigoMinion_GhostbustersWorld/VigoMinion_GhostbustersWorld"
	vigominion["bicep_right"]="V/VigoMinion_GhostbustersWorld/VigoMinion_GhostbustersWorld"
	vigominion["elbow_left"]="0_template_xbot/0_template_xbot_black"
	vigominion["elbow_right"]="0_template_xbot/0_template_xbot_black"
	vigominion["forearm_left"]="V/VigoMinion_GhostbustersWorld/VigoMinion_GhostbustersWorld"
	vigominion["forearm_right"]="V/VigoMinion_GhostbustersWorld/VigoMinion_GhostbustersWorld"
	vigominion["hand_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	vigominion["hand_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	vigominion["thigh_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	vigominion["thigh_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	vigominion["knee_left"]="0_template_xbot/0_template_xbot"
	vigominion["knee_right"]="0_template_xbot/0_template_xbot"
	vigominion["calf_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	vigominion["calf_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	vigominion["foot_left"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	vigominion["foot_right"]="G/Gozer_GhostbustersWorld/Gozer_GhostbustersWorld"
	return vigominion

# ---- misc bodies ----
# neutral
func get_livingarmor_body():
	var livingarmor ={}
	livingarmor["skeleton"]="xbot_split_mixamo_s2_w1"
	livingarmor["shoulder_left"]="L/LivingArmor_GhostbustersWorld/LivingArmor_GhostbustersWorld"
	livingarmor["shoulder_right"]="L/LivingArmor_GhostbustersWorld/LivingArmor_GhostbustersWorld"
	livingarmor["chest"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	livingarmor["torso"]="L/LivingArmorEarth_GhostbustersWorld/LivingArmorEarth_GhostbustersWorld"
	livingarmor["waist"]="L/LivingArmorEarth_GhostbustersWorld/LivingArmorEarth_GhostbustersWorld"
	livingarmor["hips"]="L/LivingArmor_GhostbustersWorld/LivingArmor_GhostbustersWorld"
	livingarmor["bicep_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	livingarmor["bicep_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	livingarmor["elbow_left"]="0_template_xbot/0_template_xbot_black"
	livingarmor["elbow_right"]="0_template_xbot/0_template_xbot_black"
	livingarmor["forearm_left"]="L/LivingArmor_GhostbustersWorld/LivingArmor_GhostbustersWorld"
	livingarmor["forearm_right"]="L/LivingArmor_GhostbustersWorld/LivingArmor_GhostbustersWorld"
	livingarmor["hand_left"]="L/LivingArmor_GhostbustersWorld/LivingArmor_GhostbustersWorld"
	livingarmor["hand_right"]="L/LivingAmor_GhostbustersWorld/LivingAmor_GhostbustersWorld"
	livingarmor["thigh_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	livingarmor["thigh_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	livingarmor["knee_left"]="0_template_xbot/0_template_xbot"
	livingarmor["knee_right"]="0_template_xbot/0_template_xbot"
	livingarmor["calf_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	livingarmor["calf_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	livingarmor["foot_left"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	livingarmor["foot_right"]="V/Vigo_GhostbustersWorld/Vigo_GhostbustersWorld"
	return livingarmor

# male
func get_mayhemminion_body():
	var mayhemminion ={}
	mayhemminion["skeleton"]="xbot_split_mixamo_s2_w1"
	mayhemminion["shoulder_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["shoulder_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["chest"]="M/MayhemMInion_GhostbustersWorld/MayhemMInion_GhostbustersWorld"
	mayhemminion["torso"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["waist"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["hips"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["bicep_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["bicep_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["elbow_left"]="0_template_xbot/0_template_xbot_black"
	mayhemminion["elbow_right"]="0_template_xbot/0_template_xbot_black"
	mayhemminion["forearm_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["forearm_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["hand_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["hand_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["thigh_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["thigh_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["knee_left"]="0_template_xbot/0_template_xbot"
	mayhemminion["knee_right"]="0_template_xbot/0_template_xbot"
	mayhemminion["calf_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["calf_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["foot_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	mayhemminion["foot_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	return mayhemminion

# female - flatwoods and mayhemminion
func get_misc_body():
	var misc ={}
	misc["skeleton"]="xbot_split_mixamo_s2_w1"
	misc["shoulder_left"]="F/Flatwoods_GhostbustersWorld/Flatwoods_GhostbustersWorld"
	misc["shoulder_right"]="F/Flatwoods_GhostbustersWorld/Flatwoods_GhostbustersWorld"
	misc["chest"]="F/Flatwoods_GhostbustersWorld/Flatwoods_GhostbustersWorld"
	misc["torso"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["waist"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["hips"]="F/Flatwoods_GhostbustersWorld/Flatwoods_GhostbustersWorld"
	misc["bicep_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["bicep_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["elbow_left"]="0_template_xbot/0_template_xbot_black"
	misc["elbow_right"]="0_template_xbot/0_template_xbot_black"
	misc["forearm_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["forearm_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["hand_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["hand_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["thigh_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["thigh_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["knee_left"]="0_template_xbot/0_template_xbot"
	misc["knee_right"]="0_template_xbot/0_template_xbot"
	misc["calf_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["calf_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["foot_left"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	misc["foot_right"]="M/MayhemMinion_GhostbustersWorld/MayhemMinion_GhostbustersWorld"
	return misc