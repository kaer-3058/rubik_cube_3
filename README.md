# 魔方数据包 使用说明

魔方六色：前蓝，后绿，左橙，右红，上黄，下白

或者是：  北蓝，南绿，东橙，西红，上黄，下白

魔方实体的共同tag：`rubik_cube_3_`

## 放置魔方

```
执行：execute positioned x y z run function rubik_cube_3:cube_function/set
传入执行位置 (本文中x y z皆指代魔方位置)
注：魔方的放置位置是魔方的正中心。
传入魔方位置时不必非常精确，函数会尝试在2格范围内找到最近的魔方。
```

## 旋转魔方 - 交互

```
魔方表面自带交互判定，可以通过连续点击三个块来触发旋转
或者长按鼠标进行拖动，会自动连点，也可以进行旋转
面向你要旋转的面进行点击会好一点，如果点错导致卡顿可以等待约4秒CD
注：在魔方旋转的过程中，无法对其进行删除以外的操作。
```

## 删除魔方

```
执行：execute positioned x y z run function rubik_cube_3:cube_function/delete
```

## 修改魔方大小

```
设置大小参数 (单位：格)：data modify storage rubik_cube_3:io cube_scale set value 1.0f
注：此参数会在魔方计算过程中被动态作为校准魔方大小的唯一参数，谨慎修改。默认为1。

执行：execute positioned x y z run function rubik_cube_3:cube_function/modify_scale
```

## 旋转魔方 - 命令

```
参数设置：data modify storage rubik_cube_3:io rotation set value {face:"up", clockwise:true, interpolation_duration:10}
参数：
    face：要旋转哪一面。可选值："up", "down", "north", "south", "east", "west", 
                              "n-s_center" (南北面之间的中间层), 
                              "e-w_center" (东西面之间的中间层), 
                              "u-d_center" (上下面之间的中间层)。
    clockwise：是否按顺时针旋转，默认为true。若此标签没有值，则会自动设置为默认值。
    interpolation_duration：魔方旋转的插值时间，单位为游戏刻，默认为0。
执行：execute positioned x y z run function rubik_cube_3:cube_function/rotation
```

## 复原魔方

```
执行：execute positioned x y z run function rubik_cube_3:cube_function/solve
```

## 随机打乱魔方

```
设置打乱步数 (默认20步)：scoreboard players set #scrambling_steps int 30
不带动画：execute positioned x y z run function rubik_cube_3:cube_function/scramble
带动画：execute positioned x y z run function rubik_cube_3:cube_function/scramble_2
```

## 一个demo：一阶魔方

```
放置：execute positioned x y z run function rubik_cube_3:set_cube/rubik_cube_1/demo_1
删除：execute positioned x y z run kill @e[type=text_display,sort=nearest,tag=rubik_demo,distance=...01]
```
