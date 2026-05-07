data modify storage rubik_cube_3:io rotation.face set value "up"
data modify storage rubik_cube_3:io rotation.clockwise set value false
function rubik_cube_3:rotation/single_layer

data modify storage rubik_cube_3:io rotation.face set value "down"
data modify storage rubik_cube_3:io rotation.clockwise set value true
function rubik_cube_3:rotation/single_layer

data modify storage rubik_cube_3:io rotation.face set value "u-d_center"
data modify storage rubik_cube_3:io rotation.clockwise set value false
function rubik_cube_3:rotation/single_layer
