#slerp最短路径问题
#若q1·q2点积结果为负，则把q2取反，再进行slerp

scoreboard players operation #quat2_t_ int *= -1 const
scoreboard players operation #quat2_x_ int *= -1 const
scoreboard players operation #quat2_y_ int *= -1 const
scoreboard players operation #quat2_z_ int *= -1 const
scoreboard players operation #quat2_t int = #quat2_t_ int
scoreboard players operation #quat2_x int = #quat2_x_ int
scoreboard players operation #quat2_y int = #quat2_y_ int
scoreboard players operation #quat2_z int = #quat2_z_ int
scoreboard players operation #quat2_t int /= 10000 const
scoreboard players operation #quat2_x int /= 10000 const
scoreboard players operation #quat2_y int /= 10000 const
scoreboard players operation #quat2_z int /= 10000 const

#四元数点积 返回100000000倍
#at+bx+cy+dz
scoreboard players operation #temp_a int = #quat1_a int
scoreboard players operation #temp_b int = #quat1_b int
scoreboard players operation #temp_c int = #quat1_c int
scoreboard players operation #temp_d int = #quat1_d int
scoreboard players operation #temp_a int *= #quat2_t int
scoreboard players operation #temp_b int *= #quat2_x int
scoreboard players operation #temp_c int *= #quat2_y int
scoreboard players operation #temp_d int *= #quat2_z int
scoreboard players operation #temp_a int += #temp_b int
scoreboard players operation #temp_a int += #temp_c int
scoreboard players operation #temp_a int += #temp_d int
