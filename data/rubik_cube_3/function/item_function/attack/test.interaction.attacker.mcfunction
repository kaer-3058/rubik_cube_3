scoreboard players set #temp1 int 0
execute on attacker as @s[tag=rubik_cube_3_item_attack] run scoreboard players set #temp1 int 1
execute if score #temp1 int matches 1 run function rubik_cube_3:item_function/attack/start
data remove entity @s attack
