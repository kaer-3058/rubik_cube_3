#循环

data remove storage rubik_cube_3:io temp1
execute unless data storage rubik_cube_3:io import_cube_formula{opposite:true} run data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_import_cube_formula[0]
execute if data storage rubik_cube_3:io import_cube_formula{opposite:true} run data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_import_cube_formula[-1]

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

#方向改为逆向
execute if data storage rubik_cube_3:io import_cube_formula{opposite:true} store result score #temp int run data get storage rubik_cube_3:io rotation.clockwise -1
execute if data storage rubik_cube_3:io import_cube_formula{opposite:true} store result storage rubik_cube_3:io rotation.clockwise byte 1 run scoreboard players add #temp int 1

# compound
# components
function rubik_cube_3:rotation/start

execute unless data storage rubik_cube_3:io import_cube_formula{opposite:true} run data remove storage rubik_cube_3:io temp_import_cube_formula[0]
execute if data storage rubik_cube_3:io import_cube_formula{opposite:true} run data remove storage rubik_cube_3:io temp_import_cube_formula[-1]
execute if data storage rubik_cube_3:io temp_import_cube_formula[0] run function rubik_cube_3:formula/import/loop1
