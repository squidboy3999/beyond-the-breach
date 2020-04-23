# data here is just used for in game state, location etc.
# hash key for the state that the unit is in.
#var unit_state =""
# var curHealth: int;
# var curMana: int;

    # when zero or less the unit will transition to another state
#var state_countdown = 0.0

    # summary of the model position, move model then set the unitdata position
    # var curLoc:Point
    # Location of base used for returning or other types of unit states.
    # var homeLoc:Point
    # Used for rotation, this is a point that is the opposite corner from home, 
    # where to look when spawning
    # var altLoc:Point

    #func update_unit(time_change):
        # depending on state move or update unit, this includes accessing the 
        # units model via the hashid in the unitcollection.
        # Set condition for initial state (maybe based on unittype)
	#if(state_countdown<=0):
	#	pass
            #unitState=HashUnitABState.getValue(unitState).getNextStateString(unitType);
            #stateCountDown=HashUnitABState.getValue(unitState).getTimer();
        #var tempUnit:Unit=(Unit)UnitCollection.getUC().getUnit(hashid);
        #HashUnitABState.getValue(unitState).update(tempUnit,timeChange);
        #stateCountDown-=timeChange;

        # new_state is a String
#func set_state(new_state):
#	unit_state=new_state
        #state_count_down=HashUnitABState.getValue(unitState).getTimer()

    # Unit does not exist yet, it will need to select a model to create a unit.
    # Instantiates a gameobject using data found in this class.  A unit is 
    # created by pairing this with the gameobject.  Then the unit is added to 
    # the unitCollection with the hashid as the key for the unit value.
    # tgm is a TempGroupModel
#func instantiate_unit(tgm):
#    pass
	#if(head_model==""):
	#	pass
            # sets the model number
            # modelNum=Random.Range(0,tgm.getArrSize(unitType))
        #var model:GameObject=(GameObject)tgm.getValue(unitType,modelNum);
        #var unit:Unit=new Unit(this,model);
        #var unitCollection.getUC().addUnit(unit);//this will automatically use the hashid as the key 

     # Unit was dead and is spawning a new model at home base
#func spawn_model():
#	pass
        #var tgm:TempGroupModel=new TempGroupModel(nationStringHash.getModelPath(subnation));
        #var model:GameObject=(GameObject)tgm.getValue(unitType,modelNum);
        #((Unit)UnitCollection.getUC().getUnit(hashid)).spawnModel(model);

    #func _ready():
    	# Called when the node is added to the scene for the first time.
    	# Initialization here
    #	pass

    #func _process(delta):
    #	# Called every frame. Delta is time since last frame.
    #	# Update game logic here.
    #	pass

    # every attack sets this to 1.0 then time decrements it, 
    # any attack requires this to be zero, future work may 
    # reduce this number with an attack speed reduction.
#var action_cooldown = 0.0