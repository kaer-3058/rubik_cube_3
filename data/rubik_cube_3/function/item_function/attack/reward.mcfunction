##左键交互

advancement revoke @s only rubik_cube_3:attack_interaction

execute unless items entity @s weapon.mainhand paper[custom_data~{is_rubik_cube_item:true}] run return fail
tag @s add rubik_cube_3_item_attack
execute as @e[type=interaction,tag=rrr_cube_entity_,distance=.0..] run function rubik_cube_3:item_function/attack/test.interaction.attacker
tag @s remove rubik_cube_3_item_attack
