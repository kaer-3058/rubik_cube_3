#随机打乱魔方 - 带动画

function rubik_cube_3:scramble_cube/start_2

data modify storage rubik_cube_3:io temp1 set from entity @s Pos
data modify storage rubik_cube_3:io temp2 set value [" [","",", ","",", ","","] "]
data modify storage rubik_cube_3:io temp2[1] set string storage rubik_cube_3:io temp1[0] 0 -1
data modify storage rubik_cube_3:io temp2[3] set string storage rubik_cube_3:io temp1[1] 0 -1
data modify storage rubik_cube_3:io temp2[5] set string storage rubik_cube_3:io temp1[2] 0 -1
tellraw @a [{text:"位于",color:"gray",italic:true},{nbt:"temp2",storage:"rubik_cube_3:io",color:"gray",italic:true,interpret:true},{text:"的魔方开始打乱",color:"gray",italic:true}]
