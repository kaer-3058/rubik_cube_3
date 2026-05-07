##四元数转旋转矩阵

#输入：data modify storage rubik_cube_3:io temp_q1 set value [0,0,0,1]

execute store result score #temp_x int run data get storage rubik_cube_3:io temp_q1[0] 10000
execute store result score #temp_y int run data get storage rubik_cube_3:io temp_q1[1] 10000
execute store result score #temp_z int run data get storage rubik_cube_3:io temp_q1[2] 10000
execute store result score #temp_w int run data get storage rubik_cube_3:io temp_q1[3] 10000

data modify storage rubik_cube_3:io temp_3_matrix set value [1,0,0,0,1,0,0,0,1]

scoreboard players operation #temp_2x^2 int = #temp_x int
scoreboard players operation #temp_2x^2 int *= #temp_x int
scoreboard players operation #temp_2x^2 int *= 2 const

scoreboard players operation #temp_2xy int = #temp_x int
scoreboard players operation #temp_2xy int *= #temp_y int
scoreboard players operation #temp_2xy int *= 2 const

scoreboard players operation #temp_2xz int = #temp_x int
scoreboard players operation #temp_2xz int *= #temp_z int
scoreboard players operation #temp_2xz int *= 2 const

scoreboard players operation #temp_2xw int = #temp_x int
scoreboard players operation #temp_2xw int *= #temp_w int
scoreboard players operation #temp_2xw int *= 2 const

scoreboard players operation #temp_2y^2 int = #temp_y int
scoreboard players operation #temp_2y^2 int *= #temp_y int
scoreboard players operation #temp_2y^2 int *= 2 const

scoreboard players operation #temp_2yz int = #temp_y int
scoreboard players operation #temp_2yz int *= #temp_z int
scoreboard players operation #temp_2yz int *= 2 const

scoreboard players operation #temp_2yw int = #temp_y int
scoreboard players operation #temp_2yw int *= #temp_w int
scoreboard players operation #temp_2yw int *= 2 const

scoreboard players operation #temp_2z^2 int = #temp_z int
scoreboard players operation #temp_2z^2 int *= #temp_z int
scoreboard players operation #temp_2z^2 int *= 2 const

scoreboard players operation #temp_2zw int = #temp_z int
scoreboard players operation #temp_2zw int *= #temp_w int
scoreboard players operation #temp_2zw int *= 2 const

#0
scoreboard players set #stemp_list_0 int 100000000
scoreboard players operation #stemp_list_0 int -= #temp_2y^2 int
execute store result storage rubik_cube_3:io temp_3_matrix[0] int .0001 run scoreboard players operation #stemp_list_0 int -= #temp_2z^2 int

#1
scoreboard players operation #stemp_list_1 int = #temp_2xy int
execute store result storage rubik_cube_3:io temp_3_matrix[1] int .0001 run scoreboard players operation #stemp_list_1 int -= #temp_2zw int

#2
scoreboard players operation #stemp_list_2 int = #temp_2xz int
execute store result storage rubik_cube_3:io temp_3_matrix[2] int .0001 run scoreboard players operation #stemp_list_2 int += #temp_2yw int

#3
scoreboard players operation #stemp_list_3 int = #temp_2xy int
execute store result storage rubik_cube_3:io temp_3_matrix[3] int .0001 run scoreboard players operation #stemp_list_3 int += #temp_2zw int

#4
scoreboard players set #stemp_list_4 int 100000000
scoreboard players operation #stemp_list_4 int -= #temp_2x^2 int
execute store result storage rubik_cube_3:io temp_3_matrix[4] int .0001 run scoreboard players operation #stemp_list_4 int -= #temp_2z^2 int

#5
scoreboard players operation #stemp_list_5 int = #temp_2yz int
execute store result storage rubik_cube_3:io temp_3_matrix[5] int .0001 run scoreboard players operation #stemp_list_5 int -= #temp_2xw int

#6
scoreboard players operation #stemp_list_6 int = #temp_2xz int
execute store result storage rubik_cube_3:io temp_3_matrix[6] int .0001 run scoreboard players operation #stemp_list_6 int -= #temp_2yw int

#7
scoreboard players operation #stemp_list_7 int = #temp_2yz int
execute store result storage rubik_cube_3:io temp_3_matrix[7] int .0001 run scoreboard players operation #stemp_list_7 int += #temp_2xw int

#8
scoreboard players set #stemp_list_8 int 100000000
scoreboard players operation #stemp_list_8 int -= #temp_2x^2 int
execute store result storage rubik_cube_3:io temp_3_matrix[8] int .0001 run scoreboard players operation #stemp_list_8 int -= #temp_2y^2 int
