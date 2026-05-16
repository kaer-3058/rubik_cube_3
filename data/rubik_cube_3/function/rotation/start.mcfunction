#旋转魔方，同时记录旋转状态

#旋转魔方
execute on passengers run function rubik_cube_3:rotation/start_on_passengers


# 魔方旋转符号： \
  \
  前蓝 北蓝 F   \
  后绿 南绿 B   \
  左橙 东橙 L   \
  右红 西红 R   \
  上黄 上黄 U   \
  下白 下白 D   \
  上下中层  E   \
  前后(南北)中层  S   \
  左右(东西)中层  M

#符号版本

data remove storage rubik_cube_3:io temp1
execute if data storage rubik_cube_3:io rotation{face:"up",        clockwise:true } run data modify storage rubik_cube_3:io temp1 set value "U"
execute if data storage rubik_cube_3:io rotation{face:"up",        clockwise:false} run data modify storage rubik_cube_3:io temp1 set value "U'"
execute if data storage rubik_cube_3:io rotation{face:"down",      clockwise:true } run data modify storage rubik_cube_3:io temp1 set value "D"
execute if data storage rubik_cube_3:io rotation{face:"down",      clockwise:false} run data modify storage rubik_cube_3:io temp1 set value "D'"
execute if data storage rubik_cube_3:io rotation{face:"north",     clockwise:true } run data modify storage rubik_cube_3:io temp1 set value "F"
execute if data storage rubik_cube_3:io rotation{face:"north",     clockwise:false} run data modify storage rubik_cube_3:io temp1 set value "F'"
execute if data storage rubik_cube_3:io rotation{face:"south",     clockwise:true } run data modify storage rubik_cube_3:io temp1 set value "B"
execute if data storage rubik_cube_3:io rotation{face:"south",     clockwise:false} run data modify storage rubik_cube_3:io temp1 set value "B'"
execute if data storage rubik_cube_3:io rotation{face:"east",      clockwise:true } run data modify storage rubik_cube_3:io temp1 set value "L"
execute if data storage rubik_cube_3:io rotation{face:"east",      clockwise:false} run data modify storage rubik_cube_3:io temp1 set value "L'"
execute if data storage rubik_cube_3:io rotation{face:"west",      clockwise:true } run data modify storage rubik_cube_3:io temp1 set value "R"
execute if data storage rubik_cube_3:io rotation{face:"west",      clockwise:false} run data modify storage rubik_cube_3:io temp1 set value "R'"
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:true } run data modify storage rubik_cube_3:io temp1 set value "S"
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:false} run data modify storage rubik_cube_3:io temp1 set value "S'"
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:true } run data modify storage rubik_cube_3:io temp1 set value "M"
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:false} run data modify storage rubik_cube_3:io temp1 set value "M'"
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:true } run data modify storage rubik_cube_3:io temp1 set value "E"
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:false} run data modify storage rubik_cube_3:io temp1 set value "E'"

data modify entity @s data.formula append from storage rubik_cube_3:io temp1

#人话版本

data remove storage rubik_cube_3:io temp3
execute if data storage rubik_cube_3:io rotation{face:"up",        clockwise:true } run data modify storage rubik_cube_3:io temp3 set value "上面顺时针"
execute if data storage rubik_cube_3:io rotation{face:"up",        clockwise:false} run data modify storage rubik_cube_3:io temp3 set value "上面逆时针"
execute if data storage rubik_cube_3:io rotation{face:"down",      clockwise:true } run data modify storage rubik_cube_3:io temp3 set value "下面顺时针"
execute if data storage rubik_cube_3:io rotation{face:"down",      clockwise:false} run data modify storage rubik_cube_3:io temp3 set value "下面逆时针"
execute if data storage rubik_cube_3:io rotation{face:"north",     clockwise:true } run data modify storage rubik_cube_3:io temp3 set value "前面顺时针"
execute if data storage rubik_cube_3:io rotation{face:"north",     clockwise:false} run data modify storage rubik_cube_3:io temp3 set value "前面逆时针"
execute if data storage rubik_cube_3:io rotation{face:"south",     clockwise:true } run data modify storage rubik_cube_3:io temp3 set value "后面顺时针"
execute if data storage rubik_cube_3:io rotation{face:"south",     clockwise:false} run data modify storage rubik_cube_3:io temp3 set value "后面逆时针"
execute if data storage rubik_cube_3:io rotation{face:"east",      clockwise:true } run data modify storage rubik_cube_3:io temp3 set value "左面顺时针"
execute if data storage rubik_cube_3:io rotation{face:"east",      clockwise:false} run data modify storage rubik_cube_3:io temp3 set value "左面逆时针"
execute if data storage rubik_cube_3:io rotation{face:"west",      clockwise:true } run data modify storage rubik_cube_3:io temp3 set value "右面顺时针"
execute if data storage rubik_cube_3:io rotation{face:"west",      clockwise:false} run data modify storage rubik_cube_3:io temp3 set value "右面逆时针"
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:true } run data modify storage rubik_cube_3:io temp3 set value "前后中层顺时针"
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:false} run data modify storage rubik_cube_3:io temp3 set value "前后中层逆时针"
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:true } run data modify storage rubik_cube_3:io temp3 set value "左右中层顺时针"
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:false} run data modify storage rubik_cube_3:io temp3 set value "左右中层逆时针"
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:true } run data modify storage rubik_cube_3:io temp3 set value "上下中层顺时针"
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:false} run data modify storage rubik_cube_3:io temp3 set value "上下中层逆时针"

data modify entity @s data.colloquial_formula append from storage rubik_cube_3:io temp3
