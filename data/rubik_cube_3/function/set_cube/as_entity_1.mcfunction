data modify entity @s Pos set from storage rubik_cube_3:io temp1
execute at @s run tp ~.5 ~-.5 ~.5
data modify storage rubik_cube_3:io temp1 set from entity @s Pos
tp .0 .0 .0
