# pursueRange - Used by scan to determine if pursue state should occur

func get_type_data(unit_type):
    var unit_type_data={}
    match unit_type:
        "civilian":
            unit_type_data["rank"]=0
            unit_type_data["pursue range"]=0
            unit_type_data["base health"]=20
            unit_type_data["base mana"]=20
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=false
        "worker":
            unit_type_data["rank"]=1
            unit_type_data["pursue range"]=0
            unit_type_data["base health"]=30
            unit_type_data["base mana"]=30
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=false
        "zombie":
            unit_type_data["rank"]=2
            unit_type_data["pursue range"]=3
            unit_type_data["base health"]=40
            unit_type_data["base mana"]=40
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=false
        "monster":
            unit_type_data["rank"]=3
            unit_type_data["pursue range"]=3
            unit_type_data["base health"]=60
            unit_type_data["base mana"]=60
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=false
        "robot":
            unit_type_data["rank"]=2
            unit_type_data["pursue range"]=3
            unit_type_data["base health"]=60
            unit_type_data["base mana"]=60
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=false
        "soldier":
            unit_type_data["rank"]=2
            unit_type_data["pursue range"]=2
            unit_type_data["base health"]=40
            unit_type_data["base mana"]=40
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=false
        "lt":
            unit_type_data["rank"]=3
            unit_type_data["pursue range"]=3
            unit_type_data["base health"]=60
            unit_type_data["base mana"]=60
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=true
        "hunter":
            unit_type_data["rank"]=3
            unit_type_data["pursue range"]=4
            unit_type_data["base health"]=60
            unit_type_data["base mana"]=60
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=true
        "guardian":
            unit_type_data["rank"]=4
            unit_type_data["pursue range"]=2
            unit_type_data["base health"]=120
            unit_type_data["base mana"]=120
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=false
        "tower":
            unit_type_data["rank"]=4
            unit_type_data["pursue range"]=0
            unit_type_data["base health"]=1500
            unit_type_data["base mana"]=1500
            unit_type_data["is building"]=true
            unit_type_data["respawns"]=false
        "titan":
            unit_type_data["rank"]=5
            unit_type_data["pursue range"]=2
            unit_type_data["base health"]=240
            unit_type_data["base mana"]=240
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=false
        "base":
            unit_type_data["rank"]=6
            unit_type_data["pursue range"]=0
            unit_type_data["base health"]=3000
            unit_type_data["base mana"]=3000
            unit_type_data["is building"]=true
            unit_type_data["respawns"]=false
        _:
            #print("not supported unit type: ",unit_type)
            unit_type_data["rank"]=0
            unit_type_data["pursue range"]=0
            unit_type_data["base health"]=0
            unit_type_data["base mana"]=0
            unit_type_data["is building"]=false
            unit_type_data["respawns"]=false
    return unit_type_data