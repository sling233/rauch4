tag @s add temp
execute at @s[tag=red] positioned ~-1 ~-1 ~-1 as @a[team=Blue,tag=!dead,dx=1,dy=1,dz=1,limit=1] run function rauch:game/core/ability/teleporter/r/hit
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 as @a[team=Red,tag=!dead,dx=1,dy=1,dz=1,limit=1] run function rauch:game/core/ability/teleporter/r/hit
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/core/ability/teleporter/r/hit
tag @s remove temp
