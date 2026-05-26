function rubik_cube_3:set_cube/2
tag @s add rubik_cube_3_is_temp_rube

#临时魔方可穿墙渲染
data modify entity @s see_through set value true

#带有一些半透明效果，255*0.7=178.5
data modify entity @s text_opacity set value 179
