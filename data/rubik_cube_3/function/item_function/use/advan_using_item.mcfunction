advancement revoke @s only rubik_cube_3:using_item_set

execute unless items entity @s weapon.mainhand paper[custom_data~{rubik_cube_function:"set"}] run return fail

#发送使用信号
execute unless score @s rubik_cube_3_item_function_set matches -2147483648.. run function rubik_cube_3:item_function/use/use_start
scoreboard players add @s rubik_cube_3_item_function_set 1
