tag @s add temp
execute at @s[tag=red] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Blue,tag=game,tag=!dead,dx=0,dy=0,dz=0,limit=1] run function rauch:game/core/ability/hacker/r/hit
execute at @s[tag=blu] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Red,tag=game,tag=!dead,dx=0,dy=0,dz=0,limit=1] run function rauch:game/core/ability/hacker/r/hit
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/core/ability/hacker/r/hit
tag @s remove temp
