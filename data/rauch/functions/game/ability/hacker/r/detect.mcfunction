tag @s add temp
execute at @s[tag=red] positioned ~-0.75 ~-0.75 ~-0.75 as @a[team=Blue,tag=game,tag=!dead,dx=0.5,dy=0.5,dz=0.5,limit=1] run function rauch:game/ability/hacker/r/hit
execute at @s[tag=blu] positioned ~-0.75 ~-0.75 ~-0.75 as @a[team=Red,tag=game,tag=!dead,dx=0.5,dy=0.5,dz=0.5,limit=1] run function rauch:game/ability/hacker/r/hit
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/ability/hacker/r/kill
tag @s remove temp
