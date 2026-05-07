data modify storage rubik_cube_3:io rotation.face set value "north"
data modify storage rubik_cube_3:io rotation.clockwise set value true
function rubik_cube_3:rotation/single_layer

data modify storage rubik_cube_3:io rotation.face set value "south"
data modify storage rubik_cube_3:io rotation.clockwise set value false
function rubik_cube_3:rotation/single_layer

data modify storage rubik_cube_3:io rotation.face set value "n-s_center"
data modify storage rubik_cube_3:io rotation.clockwise set value true
function rubik_cube_3:rotation/single_layer
