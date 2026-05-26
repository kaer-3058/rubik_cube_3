#slerp最短路径问题
#若q1·q2点积结果为负，则把q2取反，再进行slerp
scoreboard players operation #quat1_a int *= -1 const
scoreboard players operation #quat1_b int *= -1 const
scoreboard players operation #quat1_c int *= -1 const
scoreboard players operation #quat1_d int *= -1 const
