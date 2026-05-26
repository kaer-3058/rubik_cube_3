scoreboard players set #temp1 int 0
execute on target as @s[tag=rrr_cube_user] run scoreboard players set #temp1 int 1
execute if score #temp1 int matches 1 at @s run function rrr_cube_rooooooll:cube_block/touch
