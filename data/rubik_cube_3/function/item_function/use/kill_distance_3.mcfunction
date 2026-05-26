execute unless score @s player_once_input_seank matches 1.. run kill @e[type=text_display,tag=rubik_cube_3_,dx=5,dy=5,dz=5]
execute unless score @s player_once_input_seank matches 1.. run kill @e[type=interaction,tag=rrr_cube_entity_,dx=5,dy=5,dz=5]
scoreboard players add @s player_once_input_seank 1
