execute at @s[tag=red] positioned ~-1 ~-1 ~-1 if entity @a[team=Blue,tag=game,tag=!dead,dx=1,dy=1,dz=1,limit=1] run function rauch:game/kits/wokkaman/q/explode
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 if entity @a[team=Red,tag=game,tag=!dead,dx=1,dy=1,dz=1,limit=1] run function rauch:game/kits/wokkaman/q/explode
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/kits/wokkaman/q/explode
