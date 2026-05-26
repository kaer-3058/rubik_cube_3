##右键交互

scoreboard players set #temp_test_attack_mode int 0
execute on target if items entity @s weapon.mainhand paper[custom_data~{rubik_cube_function:"solve"}] run scoreboard players set #temp_test_attack_mode int 2
execute on target if items entity @s weapon.mainhand paper[custom_data~{rubik_cube_function:"export_formula"},!custom_data~{rubik_cube_recording:true}] run scoreboard players set #temp_test_attack_mode int 3
execute on target if items entity @s weapon.mainhand paper[custom_data~{rubik_cube_function:"import_formula"}] run scoreboard players set #temp_test_attack_mode int 4

execute on target run tag @s add rubik_cube_3_sstempi

data modify entity 563adc0-fffd-c986-fd14-59f186a8aaa Thrower set from entity @s data.center_entity_uuid
execute as 563adc0-fffd-c986-fd14-59f186a8aaa on origin run function rubik_cube_3:item_function/use/select_mode

execute on target run tag @s remove rubik_cube_3_sstempi

# tellraw @a {nbt:"data.center_entity_uuid",entity:"@s"}
