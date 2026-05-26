advancement revoke @s only rrr_cube_rooooooll:touch_interaction

tag @s add rrr_cube_user
execute as @e[type=interaction,tag=rrr_cube_block,distance=.0..] run function rrr_cube_rooooooll:test.interaction.target
tag @s remove rrr_cube_user

#若玩家手持交互物品则执行交互命令
execute as @e[type=interaction,tag=rubik_cube_3_test_4,distance=.0..,limit=1] run function rubik_cube_3:item_function/use/start
execute as @e[type=interaction,tag=rrr_cube_entity_,distance=.0..] run data remove entity @s interaction
tag @e[type=interaction,tag=rubik_cube_3_test_4,distance=.0..] remove rubik_cube_3_test_4
