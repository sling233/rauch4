scoreboard players add @s click 1
tag @s add temp
# sets t_pnum to pnum of this projectile (the player who shot it)
scoreboard objectives add t_pnum dummy
scoreboard players operation Global t_pnum = @s pnum

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:dust_color_transition 0.8 0.5 0.5 2 0.3 0 0 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=red] positioned ~-1 ~-1 ~-1 as @a[team=Blue,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 as @a[team=Red,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run kill @s

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:dust_color_transition 0.8 0.5 0.5 2 0.3 0 0 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=red] positioned ~-1 ~-1 ~-1 as @a[team=Blue,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 as @a[team=Red,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run kill @s

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:dust_color_transition 0.8 0.5 0.5 2 0.3 0 0 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=red] positioned ~-1 ~-1 ~-1 as @a[team=Blue,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 as @a[team=Red,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run kill @s

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:dust_color_transition 0.8 0.5 0.5 2 0.3 0 0 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=red] positioned ~-1 ~-1 ~-1 as @a[team=Blue,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 as @a[team=Red,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run kill @s

execute at @s run tp @s ^ ^ ^0.3
execute at @s run particle minecraft:dust_color_transition 0.8 0.5 0.5 2 0.3 0 0 ~ ~ ~ 0.05 0.05 0.05 0.05 1 force
execute at @s[tag=red] positioned ~-1 ~-1 ~-1 as @a[team=Blue,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 as @a[team=Red,tag=game,tag=!dead,tag=!zarzahn_hook,tag=!wok_hook,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/wokkaman/r/hit
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run kill @s


scoreboard objectives remove t_pnum
tag @s remove temp
execute at @s[scores={click=35..}] run kill @s
