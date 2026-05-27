#循环

data remove storage rubik_cube_3:io temp1
execute unless score #temp_import_formula_opposite int matches 1 run data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_import_formula[0]
execute if score #temp_import_formula_opposite int matches 1 run data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_import_formula[-1]

# data:{rotation:{interpolation_duration:4,whole_cube:false},temp_import_formula:{list:[],opposite:false}} \
  此数据来自：function rubik_cube_3:item_function/use/item_function/item_import_formula
data modify storage rubik_cube_3:io rotation set from entity @s data.rotation
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
execute if score #temp_import_formula_opposite int matches 1 store result score #temp int run data get storage rubik_cube_3:io rotation.clockwise -1
execute if score #temp_import_formula_opposite int matches 1 store result storage rubik_cube_3:io rotation.clockwise byte 1 run scoreboard players add #temp int 1

function rubik_cube_3:rotation/start

#修正魔方大小
execute store result score #temp1 int run data get entity @s data.cube_scale 1000
execute unless score #temp1 int matches 1000 on passengers run function rubik_cube_3:scramble_cube/2

execute unless score #temp_import_formula_opposite int matches 1 run data remove entity @s data.temp_import_formula.list[0]
execute if score #temp_import_formula_opposite int matches 1 run data remove entity @s data.temp_import_formula.list[-1]
