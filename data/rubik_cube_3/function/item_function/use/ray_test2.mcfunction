scoreboard players set #temp2 int 0
execute positioned ^ ^ ^.1 align xyz if block ~.5 ~.5 ~.5 #air run scoreboard players set #temp2 int 1
execute if score #temp2 int matches 1 run scoreboard players remove #loop1 int 1
execute if score #temp2 int matches 1 if score #loop1 int matches 1.. positioned ^ ^ ^.1 run return run function rubik_cube_3:item_function/use/ray_test2

execute unless score #loop1 int matches 1.. run scoreboard players set #temp2 int 0
execute if score #temp2 int matches 0 align xyz run tp @s ~.5 ~.5 ~.5
