#播放魔方旋转动作 - 左键

#此函数复制自：function rubik_cube_3:item_function/use/item_function/item_import_formula

execute at @s if function rubik_cube_3:break_ run return fail

item replace block -29999984 -60 22022220 container.0 with stone
execute as @a[tag=rubik_cube_3_stempr] run item replace block -29999984 -60 22022220 container.0 from entity @s weapon.mainhand

tag @s add rubik_cube_3_is_import_formula
data modify entity @s data merge value {rotation:{interpolation_duration:4,whole_cube:false},temp_import_formula:{list:[],opposite:true}}
data modify entity @s data.temp_import_formula.list append from block -29999984 -60 22022220 RecordItem.components."minecraft:custom_data".formula[]
scoreboard players set @s entity_time_2 1000000


data modify storage rubik_cube_3:io temp1 set from entity @s Pos
data modify storage rubik_cube_3:io temp2 set value [" [","",", ","",", ","","] "]
data modify storage rubik_cube_3:io temp2[1] set string storage rubik_cube_3:io temp1[0] 0 -1
data modify storage rubik_cube_3:io temp2[3] set string storage rubik_cube_3:io temp1[1] 0 -1
data modify storage rubik_cube_3:io temp2[5] set string storage rubik_cube_3:io temp1[2] 0 -1
tellraw @a [{text:"位于",color:"gray",italic:true},{nbt:"temp2",storage:"rubik_cube_3:io",color:"gray",italic:true,interpret:true},{text:"的魔方开始",color:"gray",italic:true},{text:"逆向",color:"dark_aqua",italic:true},{text:"播放动作",color:"gray",italic:true}]
