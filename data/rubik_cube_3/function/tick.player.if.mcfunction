#物品是否在使用中，是否结束使用
execute if score @s rubik_cube_3_item_function_set matches 1.. run function rubik_cube_3:item_function/use/using
execute if score @s rubik_cube_3_item_function_set matches ..0 run function rubik_cube_3:item_function/use/use_stop
execute if score @s rubik_cube_3_item_function_set matches ..0 run scoreboard players reset @s rubik_cube_3_item_function_set
execute if score @s rubik_cube_3_item_function_set matches 1.. run scoreboard players remove @s rubik_cube_3_item_function_set 1

execute if predicate rrr_cube_rooooooll:input/sneak if items entity @s weapon.offhand paper[custom_data~{rubik_cube_function:"set"}] at @s positioned ~-3 ~-3 ~-3 run function rubik_cube_3:item_function/use/kill_distance_3
execute if score @s player_once_input_seank matches -2147483648.. unless predicate rrr_cube_rooooooll:input/sneak run scoreboard players reset @s player_once_input_seank
