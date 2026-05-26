scoreboard players set #temp1 int 0
execute store result score #temp1 int run clear @s paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] 0
execute if score #temp1 int matches 1.. run function rubik_cube_3:rotation/export_formula_to_item/start
