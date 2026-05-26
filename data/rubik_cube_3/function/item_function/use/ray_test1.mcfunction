item replace block -29999984 -60 22022220 container.0 from entity @s weapon.mainhand
data modify entity 563adc0-fffd-c986-fd14-59f186a8aaa Thrower set from block -29999984 -60 22022220 RecordItem.components."minecraft:custom_data".target_uuid
scoreboard players set #loop1 int 50
execute as 563adc0-fffd-c986-fd14-59f186a8aaa on origin run function rubik_cube_3:item_function/use/ray_test2
