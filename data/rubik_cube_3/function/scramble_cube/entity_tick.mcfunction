#带动画的打乱魔方的tick

scoreboard players operation #temp1 int = @s entity_time_1
scoreboard players operation #temp1 int %= 5 const
execute if score @s store_scrambling_steps matches 1.. if score #temp1 int matches 1 run function rubik_cube_3:scramble_cube/loop2
execute if score @s store_scrambling_steps matches 1.. run return run scoreboard players remove @s entity_time_1 1

tag @s remove rubik_cube_3_scrambling
data remove entity @s data.rotation
scoreboard players reset @s entity_time_1
data modify storage rubik_cube_3:io temp1 set from entity @s Pos
data modify storage rubik_cube_3:io temp2 set value [" [","",", ","",", ","","] "]
data modify storage rubik_cube_3:io temp2[1] set string storage rubik_cube_3:io temp1[0] 0 -1
data modify storage rubik_cube_3:io temp2[3] set string storage rubik_cube_3:io temp1[1] 0 -1
data modify storage rubik_cube_3:io temp2[5] set string storage rubik_cube_3:io temp1[2] 0 -1
tellraw @a [{text:"位于",color:"gray",italic:true},{nbt:"temp2",storage:"rubik_cube_3:io",color:"gray",italic:true,interpret:true},{text:"的魔方打乱完成",color:"gray",italic:true}]
