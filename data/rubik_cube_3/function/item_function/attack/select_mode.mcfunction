##左键交互

execute if score #temp_test_attack_mode int matches 1 at @s run function rubik_cube_3:cube_function/delete
execute if score #temp_test_attack_mode int matches 2 at @s run function rubik_cube_3:cube_function/scramble_of_item
execute if score #temp_test_attack_mode int matches 3 as @a[tag=rubik_cube_3_stempr] run function rubik_cube_3:item_function/attack/item_function/item_export_formula
execute if score #temp_test_attack_mode int matches 4 run function rubik_cube_3:item_function/attack/item_function/item_import_formula
