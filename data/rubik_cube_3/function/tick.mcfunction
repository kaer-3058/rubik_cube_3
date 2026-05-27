execute positioned .0 .0 .0 as @e[type=text_display,tag=rubik_cube_3_,distance=.0..] run function rubik_cube_3:tick.text_display.if
execute as @a run function rubik_cube_3:tick.player.if


#只有魔方中心块才具有这个tag：rubik_cube_3_center


#  2026.5.6 总结的问题： \
1. slerp最短路径问题，有变量打错了符号 \
2. 因为涉及到模型的缩放，有些模型的四元数在插值前错误的把缩放后的四元数拿来插值了 \
3. 仅取三四位小数导致的误差积累，已换成高精度算法 \
4. 不要试图在插值过程中使用矩阵替代四元数 \
5. 经典的MC里的坐标系和数学里的不一样，有些算法把xyzw顺序写错了 \
6. 1到p0的插值里，本来只有w分量会加一项sin((1-t)u)/(sinu)，错误的把四个分量都加了一项 \
7. 忘记把数据同步到实体data里

