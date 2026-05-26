##右键交互

data modify storage rubik_cube_3:io sstemp_pos set from entity @s Pos
execute if score #temp_test_attack_mode int matches 2 at @s run function rubik_cube_3:cube_function/solve
execute if score #temp_test_attack_mode int matches 3 at @s as @a[tag=rubik_cube_3_sstempi] run function rubik_cube_3:item_function/use/item_function/item_export_formula
execute if score #temp_test_attack_mode int matches 4 run function rubik_cube_3:item_function/use/item_function/item_import_formula
