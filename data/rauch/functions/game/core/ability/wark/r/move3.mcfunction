scoreboard players add @s 2 1
execute as @s[tag=red] positioned ~-1.5 ~-1.5 ~-1.5 as @a[team=Blue,tag=game,tag=!dead,dx=2,dy=2,dz=2,limit=1] run function rauch:game/core/ability/wark/r/hit
execute as @s[tag=blu] positioned ~-1.5 ~-1.5 ~-1.5 as @a[team=Red,tag=game,tag=!dead,dx=2,dy=2,dz=2,limit=1] run function rauch:game/core/ability/wark/r/hit

execute as @s[scores={2=..70}] positioned ^ ^ ^1 run function rauch:game/core/ability/wark/r/move3
kill @s
