var gameboard_data={}


func init_gameboard(world_name,state_name,x_coord,y_coord,type):
	gameboard_data["world name"]=world_name
	gameboard_data["state name"]=state_name
	gameboard_data["x coord"]=x_coord
	gameboard_data["y coord"]=y_coord
	gameboard_data["type"]=type
	var map_generator=load("res://code/data_components/game_boards/gameboard_types.gd").new()
	gameboard_data["map"]=map_generator.build_map_type(type,state_name)
	#print("Printing Gameboard data .............................")
	#print(gameboard_data)
	#print("......................................................")


# may be unnessary but dictionary seem to behave lazily
func get_value(value):
	return value

# WIP
# Save needs to somehow include the directory structure of world territory
# var dir = Directory.new()
# var path = OS.get_executable_path().get_base_dir().plus_file(folder_name)
# dir.make_dir(path)
func save():
	var saver=load("res://code/data_components/save_load.gd").new()
	# this needs to be save in $world_name/$territory_name/$xloc_x_$yloc or similar
	var w_name=get_value(gameboard_data["world name"])
	var s_name=get_value(gameboard_data["state name"])
	var x_name=get_value(gameboard_data["x coord"])
	var y_name=get_value(gameboard_data["y coord"])
	var type= get_value(gameboard_data["type"])
	# unsure how directories are created for this
	saver.save_data(gameboard_data,"world_"+w_name+"/state_"+s_name+"/type_"+type+"_x_coord_"+x_name+"_y_coord_"+y_name)

# WIP
func load_gameboard(worldname,statename,x_coord,y_coord,type):
	pass
	#var world_name = worldname
	#var loader=load("res://code/data_components/save_load.gd").new()
#	if(loader.data_exists("world_"+world_name)):
#		map_data = loader.load_data("world_"+world_name)
#		#for key in loaded_data.data.keys():
#		#	map_data[key] = loaded_data[key]
#	else:
#		# this should only be called in debug
#		new_world(8,1)

# Seperate data from action
func populate_groups(nation1,nation2,board_type):
	pass
#	var str = "res://code/data_components/nation_templates/template_"+nation1+".gd"
#	var n1_groups=load(str).instance()
#	str = "res://code/data_components/nation_templates/template_"+nation2+".gd"
#	var n2_groups=load(str).instance()

#/*Game board uses three kinds of objects: 1 - groups (which have units), 
#2 - objects (which take up space and can block movement), 3 - grid (made of 
#tile types)*/
#public class GameBoard{
#	/*create or loads SubteamGroup these manage unit data and is used to create 
#	units (the pairing of unit data and unit models). The models move which 
#	updates the estimated location of the unit data location which can be 
#	stored.  Other data such as hitpoints is directly updated in the unit data 
#	which can then be stored.*/
#	public var groupListHead:SubteamGroupNode;//each group has lists for iterating and hashtable for lookups
#	public var styles:MapStyleStrings;//collection of strings
#	public var stateName:String;
#	protected var gameGrid:GameGrid;
#	/*each of the hashtables below take a string representing the location of 
#	the tile on the map, this will return the GBObject, objects that are larger 
#	may cover more tiles are either static or temp objects but these additional 
#	tiles will not have a corresponding hash value.  For example only the bottom 
#	left corner will reference a 8X8 building and the other spaces will have no 
#	value.*/
#	protected var objTable:Hashtable= new Hashtable();//events may remove specific objects
#	//protected var tempObjs:Hashtable= new Hashtable();//Move to making these a different class of units
#	protected var gbSize:int;//Gameboards are square so this is the height and width
#	protected var quadrantSize:int;
	 
#	/*There can be 1, 4, 9 or 16 quadrants*/ 
#	public function GameBoard(numQuadrants:int){
#		quadrantSize=numQuadrants;
#		gbSize=quadrantSize*16;//quadrants are 16x16 squares
#		gameGrid= new GameGrid(size);
#		initializeGround();
#		placeCorners();
#	}

#	//used when the groups are prepopulated and the gamegrid is being loaded.
#	public function setGroupList(listHead:SubteamGroupNode){
#		groupListHead=listHead;
#	}

#	public function getGameGrid(){
#		return gameGrid;
#	}

#	/*Maybe methods should be add, remove and check*/
#	public function getObjTable(){
#		return objTable;
#	}

#	public function getGBSize(){
#		return gbSize;
#	}

#	protected function initializeGround(){
#		for(var i:int=0;i<sizeXY;i++){
#			for(var j:int=0;j<sizeXY;j++){
#				gameGrid.setSpot(new Point(i,j),TileGround.getTile());
#			}
#		}
#	}

#	protected function placeCorners(){
#		gameGrid.setSpot(new Point(0,0),TileWall.getTile());
#		gameGrid.setSpot(new Point(0,gbSize-1),TileWall.getTile());
#		gameGrid.setSpot(new Point(gbSize-1,0),TileWall.getTile());
#		gameGrid.setSpot(new Point(gbSize-1,gbSize-1),TileWall.getTile());
#	}

#	protected function frameGameBoard(){
#		for(var i=1;i<gbSize-1;i++){
#			gameGrid.setSpot(new Point(0,i),TileWall.getTile());
#			gameGrid.setSpot(new Point(i,0),TileWall.getTile());
#			gameGrid.setSpot(new Point(gbSize-1,i),TileWall.getTile());
#			gameGrid.setSpot(new Point(i,gbSize-1),TileWall.getTile());
#		}
#	}

#	/*For the initial placement of units onto a gameboard. 
#	UnitNodes is the head list of Units (provided by GBCollections), these 
#	are used to instantiate real Units*/
#	protected function placeUnits(unitNodes:UnitNode, struct:TeamStructure, quadrant:int){
#		var civOrZombTemp;
#		var untCnt= new UnitTypeCounter();
#		//Struct used to select type of placement
#		var place:UnitPlacements=new UnitPlacements(quadrant);
#		curNode=unitNodes;
#		while(curNode!=null){
#			var tmpType: UnitType=curNode.getData().unitType;
#			tmpType.placeUnitByType(place, curNode.getData(), gameGrid, untCnt, tempObjs);
#			//do stuff
#			curNode=curNode.next;
#		}
#	}

#	/*Creates the instance of the grid, objects and the units on the board*/
#	public function createRuntimeGB(){
#		instantiateGrid();
#		instantiateObjs();
#		instantiateUnits();
#	}
	
#	/*Creates models from the grid, since these are static after creation 
#	neither needs to reference the other.  Units can take their location and it 
#	should translate to a grid location that matches where they are on the model 
#	objects.  The discrete grid location derived from the transform can be used 
#	to calculate if they are in a passable location or are blocked.*/
#	protected function instantiateGrid(){
#
#	}

#	/*Though most objects are permanent some can be removed by an event like 
#	the death of unit or a key being aquired/used.  Objects are paired with 
#	their model counter part for the removal case.*/
#	protected function instantiateObjs(){
#
#	}

#	/*Creates all units a group at a time. Called after grid is made */
#	private function instantiateUnits(){
#		var tempNode:SubteamGroupNode=groupListHead;
#		while(tempNode!=null){
#			tempNode.getData().instantiateUnits();
#			tempNode=(SubteamGroupNode)tempNode.next;
#		}
#	}



#	//abstract function extended by child classes.
#	protected function generateQuadrantsUnits(){
#
#	}

#	public function getGroupListHead(){
#		return groupListHead;
#	}

#	public function addGroup(group: SubteamGroup){
#		var tempNode:SubteamGroupNode= new SubteamGroupNode(group);
#		tempNode.insertNext(groupListHead);
#		groupListHead.insertLast(tempNode);
#		groupListHead=tempNode;
#		
#	}

#	public function updateGroups(time:float){
#		var tempNode:SubteamGroupNode=groupListHead;
#		while(tempNode!=null){
#			tempNode.getData().updateUnits(time);
#			tempNode=(SubteamGroupNode)tempNode.next;
#		}
#	}
#
#}
