#刚按下使用键

execute if items entity @s weapon.mainhand paper[custom_data~{hava_target:true}] run return run function rubik_cube_3:item_function/use/using

execute positioned .0 .0 .0 run function rubik_cube_3:item_function/use/item_function/set
item modify entity @s weapon.mainhand rubik_cube_3:copy_custom_data_1

execute at @s anchored eyes positioned ^ ^ ^ run function rubik_cube_3:item_function/use/ray_test1
