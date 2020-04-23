# hard coded for size 64
func get_xoffset(sec):
	var x_offset=0
	if(sec==0||sec==2||sec==8||sec==10):
		x_offset=0
	elif(sec==1||sec==3||sec==9||sec==11):
		x_offset=16
	elif(sec==4||sec==6||sec==12||sec==14):
		x_offset=32
	else:
		x_offset=48
	return x_offset

# hard coded for size 64
func get_yoffset(sec):
	var y_offset=0
	if(sec==0||sec==1||sec==4||sec==5):
		y_offset=0
	elif(sec==2||sec==3||sec==6||sec==7):
		y_offset=16
	elif(sec==8||sec==9||sec==12||sec==13):
		y_offset=32
	else:
		y_offset=48
	return y_offset

func get_sq_xval(quad):
	if("A"||"C"):
		return 2
	else:
		return 0

func get_sq_yval(quad):
	if("A"||"B"):
		return 2
	else:
		return 0