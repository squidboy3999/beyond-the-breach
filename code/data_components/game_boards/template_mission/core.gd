# objects are assumed to be 1x1 squares or 1/9th of a tile space
# objects lists of 2 itesms: model name and hp of object
# future work may include other sizes
var inside_objects=["placeholder"]
var outside_objects=["placeholder"]
var inside_object_path=""
var outside_object_path=""
# saturation is the number of objects to place in a single tile, 1,2, or 3
var saturation=1
# level object count is the number of roms and columns that will have objects 
# on them - 1 to 60, should be based on object count, and how many repeats 
# there should be.
var level_object_count=15