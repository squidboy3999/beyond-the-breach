extends Node2D

# on windoows %APPDATA%\Godot\app_userdata\Project Name
# on linux $HOME/.godot/app_userdata/Project Name
var save_path = "user://"

# Data managers check if data exists otherwise they instantiate new data
# there is a list_players.dat and list_worlds.dat that store names of all
# players and worlds.  Worlds are stored as world_<world name>.dat and players
# are stored as player_<player name>.dat
func data_exists(data_name):
    var f = File.new()
    if(not f.file_exists(save_path+data_name+".dat")):
        return False
    else:
        return True

func load_data(data_name):
    var f = File.new()
    f.open(save_path+data_name+".dat", File.READ)
    var loaded_data = {}
    loaded_data.parse_json(f.get_as_text())
    f.close()
    return load_data

func save_data(cur_data,data_name):
    var f = File.new()
    f.open(save_path+data_name+".dat",File.WRITE)
    f.store_string(cur_data.to_json())
    f.close()