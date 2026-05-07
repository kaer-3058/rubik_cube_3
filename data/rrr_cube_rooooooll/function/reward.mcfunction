advancement revoke @s only rrr_cube_rooooooll:touch_interaction

tag @s add rrr_cube_user
execute as @e[type=interaction,tag=rrr_cube_block] at @s on target if entity @s[tag=rrr_cube_user] as @n[type=interaction] if data entity @s interaction run function rrr_cube_rooooooll:cube_block/touch
tag @s remove rrr_cube_user