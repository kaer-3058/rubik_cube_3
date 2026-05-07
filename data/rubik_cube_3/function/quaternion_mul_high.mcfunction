##四元数乘法 q1*q2 - 高精度

#                                       \
顺序：[x,y,z,w]                          \
MC里的四元数与数学里的四元数的对应关系为：  \
wijk -> wkij                            \
xyz  -> zxy                             \
xz相反，然后y与x交换

# data modify storage rubik_cube_3:io temp_q1 set value [0,0,0,1]
# data modify storage rubik_cube_3:io temp_q2 set value [0,0,0,1]

# function rubik_cube_3:quaternion_mul_high

execute store result storage rubik_cube_3:io temp_q1_x int 1 run data get storage rubik_cube_3:io temp_q1[0] 100000000
execute store result storage rubik_cube_3:io temp_q1_y int 1 run data get storage rubik_cube_3:io temp_q1[1] 100000000
execute store result storage rubik_cube_3:io temp_q1_z int 1 run data get storage rubik_cube_3:io temp_q1[2] 100000000
execute store result storage rubik_cube_3:io temp_q1_w int 1 run data get storage rubik_cube_3:io temp_q1[3] 100000000

execute store result storage rubik_cube_3:io temp_q2_x int 1 run data get storage rubik_cube_3:io temp_q2[0] 100000000
execute store result storage rubik_cube_3:io temp_q2_y int 1 run data get storage rubik_cube_3:io temp_q2[1] 100000000
execute store result storage rubik_cube_3:io temp_q2_z int 1 run data get storage rubik_cube_3:io temp_q2[2] 100000000
execute store result storage rubik_cube_3:io temp_q2_w int 1 run data get storage rubik_cube_3:io temp_q2[3] 100000000

data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_q1_w
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_w
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #q3_w int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_x
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #q3_x int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_y
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #q3_y int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_z
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #q3_z int run data get storage rubik_cube_3:io temp3 0.00000001

data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_q1_x
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_x
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempx1 int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_w
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempx2 int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_z
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempx3 int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_y
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempx4 int run data get storage rubik_cube_3:io temp3 0.00000001

data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_q1_y
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_y
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempy1 int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_z
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempy2 int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_w
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempy3 int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_x
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempy4 int run data get storage rubik_cube_3:io temp3 0.00000001

data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_q1_z
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_z
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempz1 int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_y
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempz2 int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_x
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempz3 int run data get storage rubik_cube_3:io temp3 0.00000001
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_q2_w
function rubik_cube_3:macro/1 with storage rubik_cube_3:io
execute store result score #sstempz4 int run data get storage rubik_cube_3:io temp3 0.00000001

scoreboard players operation #q3_w int -= #sstempx1 int
scoreboard players operation #q3_w int -= #sstempy1 int
scoreboard players operation #q3_x int += #sstempx2 int
scoreboard players operation #q3_x int += #sstempy2 int
scoreboard players operation #q3_y int -= #sstempx3 int
scoreboard players operation #q3_y int += #sstempy3 int
scoreboard players operation #q3_z int += #sstempx4 int
scoreboard players operation #q3_z int -= #sstempy4 int

#输出
execute store result storage rubik_cube_3:io temp_q1[0] double .00000001 run scoreboard players operation #q3_x int -= #sstempz2 int
execute store result storage rubik_cube_3:io temp_q1[1] double .00000001 run scoreboard players operation #q3_y int += #sstempz3 int
execute store result storage rubik_cube_3:io temp_q1[2] double .00000001 run scoreboard players operation #q3_z int += #sstempz4 int
execute store result storage rubik_cube_3:io temp_q1[3] double .00000001 run scoreboard players operation #q3_w int -= #sstempz1 int
