##导入魔方公式

# 魔方旋转符号： \
  \
  前蓝 北蓝 F   \
  后绿 南绿 B   \
  左橙 东橙 L   \
  右红 西红 R   \
  上黄 上黄 U   \
  下白 下白 D   \
  上下中层  E   \
  前后中层  S   \
  左右中层  M

#输入：data modify storage rubik_cube_3:io import_cube_formula set value {list:["U","E","R'"],overwrite:true}

# data modify storage rubik_cube_3:io import_cube_formula set value {list:["U","U","L'"],overwrite:true}

data modify storage rubik_cube_3:io rotation set value {interpolation_duration:0}

#若选择覆盖则先复原魔方
execute if data storage rubik_cube_3:io import_cube_formula{overwrite:true} at @s as @e[type=text_display,tag=rubik_cube_3_,distance=...01] run function rubik_cube_3:solve/start

#循环
data modify storage rubik_cube_3:io temp_import_cube_formula set from storage rubik_cube_3:io import_cube_formula.list
execute if data storage rubik_cube_3:io temp_import_cube_formula[0] run function rubik_cube_3:formula/import/loop1
