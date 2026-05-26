##break函数

#功能：判断是否需要打断
#使用方法：execute if function rubik_cube_3:cube_function/break_ run return fail
#需传入执行位置

#用于：为防止某些函数互相干扰导致的特性，除删除和录制操作外，\
      都需要检查魔方是否正在旋转、正在打乱(带动画)、正在播放旋转动作(带动画)。

#若附近有魔方正在计算旋转则打断
execute if entity @e[type=text_display,tag=rubik_cube_3_,distance=...1,scores={rubik_cube_3_interpolat_durat=1},limit=1] run return 1

#若附近有魔方正在执行自动打乱则打断
execute if entity @e[type=text_display,tag=rubik_cube_3_scrambling,distance=...1,limit=1] run return 1

#若附近有魔方正在执行导入旋转公式则打断
execute if entity @e[type=text_display,tag=rubik_cube_3_is_import_formula,distance=...1,limit=1] run return 1

#否则不打断
return fail
