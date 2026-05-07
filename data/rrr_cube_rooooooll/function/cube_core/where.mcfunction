#默认是右转
scoreboard players set pia rrrcubecore_timeount 0

#以下情况是左转
##大中小
execute if score t0 rrrcubecore_timeount > t1 rrrcubecore_timeount if score t1 rrrcubecore_timeount > t2 rrrcubecore_timeount run return run scoreboard players set pia rrrcubecore_timeount 1
##中小大
execute if score t0 rrrcubecore_timeount > t1 rrrcubecore_timeount if score t0 rrrcubecore_timeount < t2 rrrcubecore_timeount run return run scoreboard players set pia rrrcubecore_timeount 1
##小大中
execute if score t0 rrrcubecore_timeount < t2 rrrcubecore_timeount if score t2 rrrcubecore_timeount < t1 rrrcubecore_timeount run return run scoreboard players set pia rrrcubecore_timeount 1