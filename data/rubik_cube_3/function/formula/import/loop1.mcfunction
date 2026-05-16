#循环

data remove storage rubik_cube_3:io temp1
data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_import_cube_formula[0]
execute if data storage rubik_cube_3:io {temp1:"U" } run data modify storage rubik_cube_3:io rotation merge value {face:"up",        clockwise:true }
execute if data storage rubik_cube_3:io {temp1:"U'"} run data modify storage rubik_cube_3:io rotation merge value {face:"up",        clockwise:false}
execute if data storage rubik_cube_3:io {temp1:"D" } run data modify storage rubik_cube_3:io rotation merge value {face:"down",      clockwise:true }
execute if data storage rubik_cube_3:io {temp1:"D'"} run data modify storage rubik_cube_3:io rotation merge value {face:"down",      clockwise:false}
execute if data storage rubik_cube_3:io {temp1:"F" } run data modify storage rubik_cube_3:io rotation merge value {face:"north",     clockwise:true }
execute if data storage rubik_cube_3:io {temp1:"F'"} run data modify storage rubik_cube_3:io rotation merge value {face:"north",     clockwise:false}
execute if data storage rubik_cube_3:io {temp1:"B" } run data modify storage rubik_cube_3:io rotation merge value {face:"south",     clockwise:true }
execute if data storage rubik_cube_3:io {temp1:"B'"} run data modify storage rubik_cube_3:io rotation merge value {face:"south",     clockwise:false}
execute if data storage rubik_cube_3:io {temp1:"L" } run data modify storage rubik_cube_3:io rotation merge value {face:"east",      clockwise:true }
execute if data storage rubik_cube_3:io {temp1:"L'"} run data modify storage rubik_cube_3:io rotation merge value {face:"east",      clockwise:false}
execute if data storage rubik_cube_3:io {temp1:"R" } run data modify storage rubik_cube_3:io rotation merge value {face:"west",      clockwise:true }
execute if data storage rubik_cube_3:io {temp1:"R'"} run data modify storage rubik_cube_3:io rotation merge value {face:"west",      clockwise:false}
execute if data storage rubik_cube_3:io {temp1:"S" } run data modify storage rubik_cube_3:io rotation merge value {face:"n-s_center",clockwise:true }
execute if data storage rubik_cube_3:io {temp1:"S'"} run data modify storage rubik_cube_3:io rotation merge value {face:"n-s_center",clockwise:false}
execute if data storage rubik_cube_3:io {temp1:"M" } run data modify storage rubik_cube_3:io rotation merge value {face:"e-w_center",clockwise:true }
execute if data storage rubik_cube_3:io {temp1:"M'"} run data modify storage rubik_cube_3:io rotation merge value {face:"e-w_center",clockwise:false}
execute if data storage rubik_cube_3:io {temp1:"E" } run data modify storage rubik_cube_3:io rotation merge value {face:"u-d_center",clockwise:true }
execute if data storage rubik_cube_3:io {temp1:"E'"} run data modify storage rubik_cube_3:io rotation merge value {face:"u-d_center",clockwise:false}

function rubik_cube_3:rotation/start

data remove storage rubik_cube_3:io temp_import_cube_formula[0]
execute if data storage rubik_cube_3:io temp_import_cube_formula[0] run function rubik_cube_3:formula/import/loop1
