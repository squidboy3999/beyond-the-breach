# quadrants
# |A|B|
# -----
# |C|D|

# sectors
# | 0  1| 4  5|
# | 2  3| 6  7|
# -------------
# | 8  9|12 13|
# |10 11|14 15|

func get_placement_type(placement_type):
	var place={}
	place["base"]={}
	place["tower"]={}
	place["titan"]={}
	place["guardian"]={}
	place["lt"]={}
	place["hunter"]={}
	place["soldier"]={}
	place["misc"]={}
	match placement_type:
		"block":
			place["base"]["count"]=0
			place["tower"]["count"]=0
			place["titan"]["count"]=0
			place["guardian"]["count"]=0
			place["lt"]["count"]=0
			place["hunter"]["count"]=0
			place["soldier"]["count"]=0
			place["misc"]["count"]=25
			var b_misc_cnt=0
			for i in range(0,5):
				for j in range(0,5):
					place["misc"][b_misc_cnt]={}
					place["misc"][b_misc_cnt]["x"]=j+5
					place["misc"][b_misc_cnt]["y"]=i+5
					b_misc_cnt = b_misc_cnt+1

		"doubling":
			place["base"]["count"]=0
			place["tower"]["count"]=0
			place["titan"]["count"]=2
			place["titan"][0]={}
			place["titan"][1]={}
			place["titan"][0]["x"]=2
			place["titan"][0]["y"]=2
			place["titan"][1]["x"]=3
			place["titan"][1]["y"]=3

			place["guardian"]["count"]=2
			place["guardian"][0]={}
			place["guardian"][1]={}
			place["guardian"][0]["x"]=3
			place["guardian"][0]["y"]=5
			place["guardian"][1]["x"]=5
			place["guardian"][1]["y"]=3

			place["lt"]["count"]=4
			place["lt"][0]={}
			place["lt"][1]={}
			place["lt"][2]={}
			place["lt"][3]={}
			place["lt"][0]["x"]=5
			place["lt"][0]["y"]=8
			place["lt"][1]["x"]=6
			place["lt"][1]["y"]=8
			place["lt"][2]["x"]=8
			place["lt"][2]["y"]=5
			place["lt"][3]["x"]=8
			place["lt"][3]["y"]=6

			place["hunter"]["count"]=2
			place["hunter"][0]={}
			place["hunter"][1]={}
			place["hunter"][0]["x"]=3
			place["hunter"][0]["y"]=9
			place["hunter"][1]["x"]=9
			place["hunter"][1]["y"]=3

			place["soldier"]["count"]=8
			var d_sold_cnt=0
			for i in range(0,2):
				for j in range(0,2):
					place["soldier"][d_sold_cnt]={}
					place["soldier"][d_sold_cnt]["x"]=j+7
					place["soldier"][d_sold_cnt]["y"]=i+11
					d_sold_cnt = d_sold_cnt+1
					place["soldier"][d_sold_cnt]={}
					place["soldier"][d_sold_cnt]["x"]=j+11
					place["soldier"][d_sold_cnt]["y"]=i+7
					d_sold_cnt = d_sold_cnt+1

			place["misc"]["count"]=0

		"tripling":
			place["base"]["count"]=0
			place["tower"]["count"]=0
			place["titan"]["count"]=2
			place["titan"][0]={}
			place["titan"][1]={}
			place["titan"][0]["x"]=2
			place["titan"][0]["y"]=2
			place["titan"][1]["x"]=3
			place["titan"][1]["y"]=3

			place["guardian"]["count"]=3
			place["guardian"][0]={}
			place["guardian"][1]={}
			place["guardian"][2]={}
			place["guardian"][0]["x"]=3
			place["guardian"][0]["y"]=5
			place["guardian"][1]["x"]=5
			place["guardian"][1]["y"]=3
			place["guardian"][2]["x"]=5
			place["guardian"][2]["y"]=5

			place["lt"]["count"]=9
			var tp_lt_cnt
			for i in range(0,3):
				for j in range(0,3):
					place["lt"][tp_lt_cnt]={}
					place["lt"][tp_lt_cnt]["x"]=6+i
					place["lt"][tp_lt_cnt]["y"]=6+j
					tp_lt_cnt=tp_lt_cnt+1

			place["hunter"]["count"]=3
			place["hunter"][0]={}
			place["hunter"][1]={}
			place["hunter"][2]={}
			place["hunter"][0]["x"]=3
			place["hunter"][0]["y"]=9
			place["hunter"][1]["x"]=9
			place["hunter"][1]["y"]=3
			place["hunter"][2]["x"]=9
			place["hunter"][2]["y"]=9

			place["soldier"]["count"]=27
			var tp_sd_cnt=0
			for i in range(0,3):
				for j in range(0,3):
					place["soldier"][tp_sd_cnt]={}
					place["soldier"][tp_sd_cnt]["x"]=6+i
					place["soldier"][tp_sd_cnt]["y"]=11+j
					tp_sd_cnt=tp_sd_cnt+1
					place["soldier"][tp_sd_cnt]={}
					place["soldier"][tp_sd_cnt]["x"]=11+i
					place["soldier"][tp_sd_cnt]["y"]=6+j
					tp_sd_cnt=tp_sd_cnt+1
					place["soldier"][tp_sd_cnt]={}
					place["soldier"][tp_sd_cnt]["x"]=11+i
					place["soldier"][tp_sd_cnt]["y"]=11+j
					tp_sd_cnt=tp_sd_cnt+1

			place["misc"]["count"]=0

		"quadrupling":
			place["base"]["count"]=0
			place["tower"]["count"]=0
			place["titan"]["count"]=2
			place["titan"][0]={}
			place["titan"][1]={}
			place["titan"][0]["x"]=2
			place["titan"][0]["y"]=2
			place["titan"][1]["x"]=3
			place["titan"][1]["y"]=3

			place["guardian"]["count"]=4
			place["guardian"][0]={}
			place["guardian"][1]={}
			place["guardian"][2]={}
			place["guardian"][3]={}
			place["guardian"][0]["x"]=1
			place["guardian"][0]["y"]=5
			place["guardian"][1]["x"]=3
			place["guardian"][1]["y"]=5
			place["guardian"][2]["x"]=5
			place["guardian"][2]["y"]=1
			place["guardian"][3]["x"]=5
			place["guardian"][3]["y"]=3

			place["lt"]["count"]=16
			var qp_lt_cnt=0
			for i in range(0,8):
				place["lt"][qp_lt_cnt]={}
				place["lt"][qp_lt_cnt]["x"]=5
				place["lt"][qp_lt_cnt]["y"]=7+i
				qp_lt_cnt=qp_lt_cnt+1
				place["lt"][qp_lt_cnt]={}
				place["lt"][qp_lt_cnt]["x"]=7+i
				place["lt"][qp_lt_cnt]["y"]=5
				qp_lt_cnt=qp_lt_cnt+1

			place["hunter"]["count"]=4
			place["hunter"][0]={}
			place["hunter"][1]={}
			place["hunter"][2]={}
			place["hunter"][3]={}
			place["hunter"][0]["x"]=3
			place["hunter"][0]["y"]=9
			place["hunter"][1]["x"]=3
			place["hunter"][1]["y"]=12
			place["hunter"][2]["x"]=9
			place["hunter"][2]["y"]=3
			place["hunter"][3]["x"]=12
			place["hunter"][3]["y"]=3

			place["soldier"]["count"]=64
			var qp_sd_cnt =0
			for i in range(0,8):
				for j in range(0,8):
					place["soldier"][qp_sd_cnt]={}
					place["soldier"][qp_sd_cnt]["x"]=7+j
					place["soldier"][qp_sd_cnt]["y"]=7+i
					qp_sd_cnt=qp_sd_cnt+1

			place["misc"]["count"]=0

		"single lane":
			place["base"]["count"]=1
			# single base covers 4 tiles but is placed in a corner
			place["base"][0]={}
			place["base"][0]["x"]=1
			place["base"][0]["y"]=1
			place["tower"]["count"]=4
			place["tower"][0]={}
			place["tower"][1]={}
			place["tower"][2]={}
			place["tower"][3]={}
			place["tower"][0]["x"]=3
			place["tower"][0]["y"]=7
			place["tower"][1]["x"]=7
			place["tower"][1]["y"]=3
			place["tower"][2]["x"]=10
			place["tower"][2]["y"]=14
			place["tower"][3]["x"]=14
			place["tower"][3]["y"]=10

			place["titan"]["count"]=2
			place["titan"][0]={}
			place["titan"][1]={}
			place["titan"][0]["x"]=5
			place["titan"][0]["y"]=5
			place["titan"][1]["x"]=9
			place["titan"][1]["y"]=9

			place["guardian"]["count"]=2
			place["guardian"][0]={}
			place["guardian"][1]={}
			place["guardian"][0]["x"]=7
			place["guardian"][0]["y"]=9
			place["guardian"][1]["x"]=9
			place["guardian"][1]["y"]=7

			place["lt"]["count"]=5
			place["lt"][0]={}
			place["lt"][1]={}
			place["lt"][2]={}
			place["lt"][3]={}
			place["lt"][4]={}
			place["lt"][0]["x"]=10
			place["lt"][0]["y"]=11
			place["lt"][1]["x"]=11
			place["lt"][1]["y"]=10
			place["lt"][2]["x"]=11
			place["lt"][2]["y"]=11
			place["lt"][3]["x"]=12
			place["lt"][3]["y"]=11
			place["lt"][4]["x"]=11
			place["lt"][4]["y"]=12

			place["hunter"]["count"]=2
			place["hunter"][0]={}
			place["hunter"][1]={}
			place["hunter"][0]["x"]=10
			place["hunter"][0]["y"]=3
			place["hunter"][1]["x"]=3
			place["hunter"][1]["y"]=10

			place["soldier"]["count"]=10
			place["soldier"][0]={}
			place["soldier"][0]["x"]=12
			place["soldier"][0]["y"]=12
			var sl_so_cnt=1
			for i in range(0,3):
				for j in range(0,3):
					place["soldier"][sl_so_cnt]={}
					place["soldier"][sl_so_cnt]["x"]=13+j
					place["soldier"][sl_so_cnt]["y"]=13+i
					sl_so_cnt=sl_so_cnt+1

			place["misc"]["count"]=0

		"triple lane":
			place["base"]["count"]=1
			# single base covers 4 tiles but placement is done in a corner
			place["base"][0]={}
			place["base"][0]["x"]=1
			place["base"][0]["y"]=1

			place["tower"]["count"]=6
			place["tower"][0]={}
			place["tower"][1]={}
			place["tower"][2]={}
			place["tower"][3]={}
			place["tower"][4]={}
			place["tower"][5]={}
			place["tower"][0]["x"]=0
			place["tower"][0]["y"]=11
			place["tower"][1]["x"]=11
			place["tower"][1]["y"]=0
			place["tower"][2]["x"]=11
			place["tower"][2]["y"]=4
			place["tower"][3]["x"]=4
			place["tower"][3]["y"]=11
			place["tower"][4]["x"]=11
			place["tower"][4]["y"]=8
			place["tower"][5]["x"]=8
			place["tower"][5]["y"]=11

			place["titan"]["count"]=2
			place["titan"][0]={}
			place["titan"][1]={}
			place["titan"][0]["x"]=5
			place["titan"][0]["y"]=5
			place["titan"][1]["x"]=7
			place["titan"][1]["y"]=7

			place["guardian"]["count"]=3
			place["guardian"][0]={}
			place["guardian"][1]={}
			place["guardian"][2]={}
			place["guardian"][0]["x"]=3
			place["guardian"][0]["y"]=6
			place["guardian"][1]["x"]=6
			place["guardian"][1]["y"]=3
			place["guardian"][2]["x"]=6
			place["guardian"][2]["y"]=6

			place["lt"]["count"]=10
			place["lt"][0]={}
			place["lt"][1]={}
			place["lt"][2]={}
			place["lt"][3]={}
			place["lt"][4]={}
			place["lt"][5]={}
			place["lt"][6]={}
			place["lt"][7]={}
			place["lt"][8]={}
			place["lt"][9]={}
			place["lt"][0]["x"]=10
			place["lt"][0]["y"]=3
			place["lt"][1]["x"]=3
			place["lt"][1]["y"]=10
			place["lt"][2]["x"]=11
			place["lt"][2]["y"]=2
			place["lt"][3]["x"]=2
			place["lt"][3]["y"]=11
			place["lt"][4]["x"]=11
			place["lt"][4]["y"]=3
			place["lt"][5]["x"]=3
			place["lt"][5]["y"]=11
			place["lt"][6]["x"]=12
			place["lt"][6]["y"]=10
			place["lt"][7]["x"]=10
			place["lt"][7]["y"]=12
			place["lt"][8]["x"]=10
			place["lt"][8]["y"]=13
			place["lt"][9]["x"]=13
			place["lt"][9]["y"]=10

			place["hunter"]["count"]=3
			place["hunter"][0]={}
			place["hunter"][1]={}
			place["hunter"][2]={}
			place["hunter"][0]["x"]=8
			place["hunter"][0]["y"]=3
			place["hunter"][1]["x"]=3
			place["hunter"][1]["y"]=8
			place["hunter"][2]["x"]=8
			place["hunter"][2]["y"]=8

			place["soldier"]["count"]=30
			place["soldier"][0]={}
			place["soldier"][1]={}
			place["soldier"][2]={}
			place["soldier"][0]["x"]=12
			place["soldier"][0]["y"]=12
			place["soldier"][1]["x"]=12
			place["soldier"][1]["y"]=3
			place["soldier"][2]["x"]=3
			place["soldier"][2]["y"]=12
			var tl_so_cnt=3
			for i in range(0,3):
				for j in range(0,3):
					place["soldier"][tl_so_cnt]={}
					place["soldier"][tl_so_cnt]["x"]=13+j
					place["soldier"][tl_so_cnt]["y"]=13+i
					tl_so_cnt=tl_so_cnt+1
					place["soldier"][tl_so_cnt]={}
					place["soldier"][tl_so_cnt]["x"]=13+j
					place["soldier"][tl_so_cnt]["y"]=2+i
					tl_so_cnt=tl_so_cnt+1
					place["soldier"][tl_so_cnt]={}
					place["soldier"][tl_so_cnt]["x"]=2+j
					place["soldier"][tl_so_cnt]["y"]=13+i
					tl_so_cnt=tl_so_cnt+1

			place["misc"]["count"]=0
	return place

# block
#            0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#        0  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        1  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        2  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        3  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        4  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        5  -- -- -- -- -- cz cz cz cz cz -- -- -- -- -- --
#        6  -- -- -- -- -- cz cz cz cz cz -- -- -- -- -- --
#        7  -- -- -- -- -- cz cz cz cz cz -- -- -- -- -- --
#        8  -- -- -- -- -- cz cz cz cz cz -- -- -- -- -- --
#        9  -- -- -- -- -- cz cz cz cz cz -- -- -- -- -- -- 
#        10 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        11 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        12 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        13 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        14 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#		 15 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

# doubling
#		   0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#        0  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        1  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        2  -- -- ti -- -- -- -- -- -- -- -- -- -- -- -- --
#        3  -- -- -- ti -- gu -- -- -- hu -- -- -- -- -- --
#        4  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        5  -- -- -- gu -- -- -- -- lt -- -- -- -- -- -- --
#        6  -- -- -- -- -- -- -- -- lt -- -- -- -- -- -- --
#        7  -- -- -- -- -- -- -- -- -- -- -- so so -- -- --
#        8  -- -- -- -- -- lt lt -- -- -- -- so so -- -- --
#        9  -- -- -- hu -- -- -- -- -- -- -- -- -- -- -- -- 
#        10 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        11 -- -- -- -- -- -- -- so so -- -- -- -- -- -- --
#        12 -- -- -- -- -- -- -- so so -- -- -- -- -- -- --
#        13 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        14 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        15 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

# tripling
#            0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#        0  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        1  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        2  -- -- ti -- -- -- -- -- -- -- -- -- -- -- -- --
#        3  -- -- -- ti -- gu -- -- -- hu -- -- -- -- -- --
#        4  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        5  -- -- -- gu -- gu -- -- -- -- -- -- -- -- -- --
#        6  -- -- -- -- -- -- lt lt lt -- -- so so so -- --
#        7  -- -- -- -- -- -- lt lt lt -- -- so so so -- --
#        8  -- -- -- -- -- -- lt lt lt -- -- so so so -- --
#        9  -- -- -- hu -- -- -- -- -- hu -- -- -- -- -- -- 
#        10 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        11 -- -- -- -- -- -- so so so -- -- so so so -- --
#        12 -- -- -- -- -- -- so so so -- -- so so so -- --
#        13 -- -- -- -- -- -- so so so -- -- so so so -- --
#        14 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        15 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

# quadrupling
#            0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#        0  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        1  -- -- -- -- -- gu -- -- -- -- -- -- -- -- -- --
#        2  -- -- ti -- -- -- -- -- -- -- -- -- -- -- -- --
#        3  -- -- -- ti -- gu -- -- -- hu -- -- hu -- -- --
#        4  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        5  -- gu -- gu -- -- -- lt lt lt lt lt lt lt lt --
#        6  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        7  -- -- -- -- -- lt -- so so so so so so so so --
#        8  -- -- -- -- -- lt -- so so so so so so so so --
#        9  -- -- -- hu -- lt -- so so so so so so so so -- 
#        10 -- -- -- -- -- lt -- so so so so so so so so --
#        11 -- -- -- -- -- lt -- so so so so so so so so --
#        12 -- -- -- hu -- lt -- so so so so so so so so --
#        13 -- -- -- -- -- lt -- so so so so so so so so --
#        14 -- -- -- -- -- lt -- so so so so so so so so --
#        15 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

# bo was for bonus may not bed used

# single lane
#            0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#        0  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        1  -- ba ba -- -- -- -- -- -- -- -- -- -- -- -- --
#        2  -- ba ba -- -- -- -- -- -- -- -- -- -- -- -- --
#        3  -- -- -- -- -- -- -- to -- -- hu -- -- -- -- --
#        4  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        5  -- -- -- -- -- ti -- -- -- -- -- -- -- -- -- --
#        6  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        7  -- -- -- to -- -- -- bo -- gu -- -- -- -- -- --
#        8  -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
#        9  -- -- -- -- -- -- -- gu -- ti -- -- -- -- -- -- 
#        10 -- -- -- hu -- -- -- -- -- -- -- lt -- -- to to
#        11 -- -- -- -- -- -- -- -- -- -- lt lt lt -- to to
#        12 -- -- -- -- -- -- -- -- -- -- -- lt so -- -- --
#        13 -- -- -- -- -- -- -- -- -- -- -- -- -- so so so
#        14 -- -- -- -- -- -- -- -- -- -- to to -- so so so
#        15 -- -- -- -- -- -- -- -- -- -- to to -- so so so

# triple lane
#            0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
#        0  -- -- -- -- -- -- -- -- -- -- -- to -- -- -- --
#        1  -- ba ba -- -- -- -- -- -- -- -- -- -- -- -- --
#        2  -- ba ba -- -- -- -- -- -- -- -- lt -- so so so
#        3  -- -- -- -- -- -- gu -- hu bo lt lt so so so so
#        4  -- -- -- -- -- -- -- -- -- -- -- to -- so so so
#        5  -- -- -- -- -- ti -- -- -- -- -- -- -- -- -- --
#        6  -- -- -- gu -- -- gu -- -- -- -- -- -- -- -- --
#        7  -- -- -- -- -- -- -- ti -- -- -- -- -- -- -- --
#        8  -- -- -- hu -- -- -- -- hu -- -- to -- -- -- --
#        9  -- -- -- bo -- -- -- -- -- bo -- -- -- -- -- -- 
#        10 -- -- -- lt -- -- -- -- -- -- -- -- lt lt -- --
#        11 to -- lt lt to -- -- -- to -- -- -- -- -- -- --
#        12 -- -- -- so -- -- -- -- -- -- lt -- so -- -- --
#        13 -- -- so so so -- -- -- -- -- lt -- -- so so so
#        14 -- -- so so so -- -- -- -- -- -- -- -- so so so
#        15 -- -- so so so -- -- -- -- -- -- -- -- so so so