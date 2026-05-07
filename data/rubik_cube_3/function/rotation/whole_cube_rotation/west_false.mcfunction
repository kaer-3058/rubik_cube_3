data modify storage rubik_cube_3:io rotation.face set value "east"
data modify storage rubik_cube_3:io rotation.clockwise set value true
function rubik_cube_3:rotation/single_layer

data modify storage rubik_cube_3:io rotation.face set value "west"
data modify storage rubik_cube_3:io rotation.clockwise set value false
function rubik_cube_3:rotation/single_layer

data modify storage rubik_cube_3:io rotation.face set value "e-w_center"
data modify storage rubik_cube_3:io rotation.clockwise set value true
function rubik_cube_3:rotation/single_layer
