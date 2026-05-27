# 魔方数据包 使用说明

　

![](https://s41.ax1x.com/2026/05/17/pevsrsU.png)

魔方六色：前蓝，后绿，左橙，右红，上黄，下白

或者是：   北蓝，南绿，东橙，西红，上黄，下白

对应MC版本：26.1.2

　

## 交互玩法

------

### 交互道具

```
获取交互道具：function rubik_cube_3:cube_function/give_items
可以使用道具进行：放置/删除魔方，复原/打乱魔方，录制/播放魔方旋转动作。
```

### 旋转魔方

```
· 魔方表面自带交互判定，可以通过连续点击三个块来触发旋转。
· 可以长按鼠标进行拖动，会自动连点。
· 面向你要旋转的面进行点击会好一点，如果点错导致卡顿可以等待2~3秒CD。
· 同一个魔方单次仅可旋转一层，且一次只能转90度。
· 在魔方旋转的过程中，无法对其进行删除和录制以外的操作。
交互作者：Squash233_
```

　

## 交互命令

------

魔方实体的共同 tag：`rubik_cube_3_`

### 放置魔方

```
执行：execute positioned x y z run function rubik_cube_3:cube_function/set
传入执行位置 (本文中x y z皆指代魔方位置)
注：魔方的放置位置是魔方的正中心。
传入魔方位置时不必非常精确，函数会尝试在2格范围内找到最近的魔方。
```

### 删除魔方

```
执行：execute positioned x y z run function rubik_cube_3:cube_function/delete
```

### 修改魔方大小

```
设置大小参数 (单位：格)：data modify storage rubik_cube_3:io cube_scale set value 1.0
执行：execute positioned x y z run function rubik_cube_3:cube_function/modify_scale
```

### 旋转魔方

```
参数设置：data modify storage rubik_cube_3:io rotation set value {face:"up", clockwise:true, interpolation_duration:10}
参数：
    face：要旋转哪一面。可选值："up", "down", "north", "south", "east", "west", 
                              "n-s_center" (南北中间层), 
                              "e-w_center" (东西中间层), 
                              "u-d_center" (上下中间层)。
    clockwise：是否按顺时针旋转，默认为true。若此标签没有值，则会自动设置为默认值。
    interpolation_duration：魔方旋转的插值时间，单位为游戏刻，默认为0。
执行：execute positioned x y z run function rubik_cube_3:cube_function/rotation
注：
1.魔方对于上下东南西北的定义依赖于魔方实体的朝向。
2.在魔方旋转的过程中，无法对其进行删除和录制以外的操作。
```

### 复原魔方

```
执行：execute positioned x y z run function rubik_cube_3:cube_function/solve
注：会清空旋转历史记录。
```

### 随机打乱魔方

```
设置打乱步数 (默认20步)：scoreboard players set #scrambling_steps int 30
不带动画：execute positioned x y z run function rubik_cube_3:cube_function/scramble
带动画：execute positioned x y z run function rubik_cube_3:cube_function/scramble_2
```

------

### 导出旋转历史记录 (旋转序列)

```
执行：execute positioned x y z run function rubik_cube_3:cube_function/export_formula
符号版本：data get storage rubik_cube_3:io cube_formula
人话版本：data get storage rubik_cube_3:io cube_colloquial_formula
注：使用复原命令会清空旋转历史记录。
```

### 导入旋转序列

```
输入：data modify storage rubik_cube_3:io import_cube_formula set value {list:["U'","L","F'"],opposite:false}
参数：
    list：字符串列表，旋转符号列表。默认从前往后逐次应用旋转，且始终在当前旋转的基础上叠加应用。
    opposite：是否逆向应用旋转序列。
执行：execute positioned x y z run function rubik_cube_3:cube_function/import_formula

直接把导出的旋转序列写入：data modify storage rubik_cube_3:io import_cube_formula.list set from storage rubik_cube_3:io cube_formula
```

### 旋转符号说明

![](https://s41.ax1x.com/2026/05/17/pevsGqg.png)

| 视角方向 | 坐标方向 | 颜色 | 符号 |
| -------- | -------- | ---- | ---- |
| 前       | 北       | 蓝   | F    |
| 后       | 南       | 绿   | B    |
| 左       | 东       | 橙   | L    |
| 右       | 西       | 红   | R    |
| 上       | 上       | 黄   | U    |
| 下       | 下       | 白   | D    |
| 上下中层 | 上下中层 |      | E    |
| 前后中层 | 南北中层 |      | S    |
| 左右中层 | 东西中层 |      | M    |

注：默认为顺时针旋转，符号后加 `'` 表示逆时针。例如 `U'` 表示上层逆时针旋转。

　

------

### 一个demo：一阶魔方

```
放置：execute positioned x y z run function rubik_cube_3:set_cube/rubik_cube_1/demo_1
删除：execute positioned x y z run kill @e[type=text_display,sort=nearest,tag=rubik_demo,distance=...01]
```

