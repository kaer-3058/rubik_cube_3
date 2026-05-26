#松开使用键

item replace block -29999984 -60 22022220 container.0 from entity @s weapon.mainhand
data remove block -29999984 -60 22022220 RecordItem.components."minecraft:custom_data".target_uuid
data remove block -29999984 -60 22022220 RecordItem.components."minecraft:custom_data".hava_target
item replace entity @s weapon.mainhand from block -29999984 -60 22022220 container.0

#删除临时魔方
execute as @e[type=text_display,tag=rubik_cube_3_using_item_set,distance=.0..] on passengers run kill @s
kill @e[type=text_display,tag=rubik_cube_3_using_item_set,distance=.0..]

scoreboard players set #loop1 int 50
execute at @s anchored eyes positioned ^ ^ ^ run function rubik_cube_3:item_function/use/ray_test3
