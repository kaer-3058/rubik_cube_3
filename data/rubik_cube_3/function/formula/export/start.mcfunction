##导出魔方公式

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

data modify storage rubik_cube_3:io cube_formula set from entity @s data.formula
data modify storage rubik_cube_3:io cube_colloquial_formula set from entity @s data.colloquial_formula

# tellraw @s ["[ ",{storage:"rubik_cube_3:io",nbt:"cube_formula[]",interpret:true}," ]"]
