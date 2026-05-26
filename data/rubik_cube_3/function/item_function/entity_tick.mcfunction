#播放魔方旋转动作 - tick

scoreboard players operation #temp1 int = @s entity_time_2
scoreboard players operation #temp1 int %= 5 const

# data:{rotation:{interpolation_duration:4,whole_cube:false},temp_import_formula:{list:[],opposite:false}} \
  此数据来自：function rubik_cube_3:item_function/use/item_function/item_import_formula
data modify storage rubik_cube_3:io temp_import_formula set from entity @s data.temp_import_formula.list
execute store success score #temp_import_formula_opposite int if data entity @s data.temp_import_formula{opposite:true}
execute if data storage rubik_cube_3:io temp_import_formula[0] if score #temp1 int matches 1 run function rubik_cube_3:item_function/loop1
execute if data storage rubik_cube_3:io temp_import_formula[0] if score @s entity_time_2 matches 1.. run return run scoreboard players remove @s entity_time_2 1


tag @s remove rubik_cube_3_is_import_formula
data remove entity @s data.rotation
scoreboard players reset @s entity_time_2
data modify storage rubik_cube_3:io temp1 set from entity @s Pos
data modify storage rubik_cube_3:io temp2 set value [" [","",", ","",", ","","] "]
data modify storage rubik_cube_3:io temp2[1] set string storage rubik_cube_3:io temp1[0] 0 -1
data modify storage rubik_cube_3:io temp2[3] set string storage rubik_cube_3:io temp1[1] 0 -1
data modify storage rubik_cube_3:io temp2[5] set string storage rubik_cube_3:io temp1[2] 0 -1
tellraw @a [{text:"位于",color:"gray",italic:true},{nbt:"temp2",storage:"rubik_cube_3:io",color:"gray",italic:true,interpret:true},{text:"的魔方动作播放完成",color:"gray",italic:true}]
