scoreboard players add @s 2 1
execute as @s[tag=red] positioned ~-1.75 ~-1.75 ~-1.75 as @a[team=Blue,tag=game,tag=!dead,dx=2.5,dy=2.5,dz=2.5,limit=1] run function rauch:game/core/ability/wark/r/hit
execute as @s[tag=blu] positioned ~-1.75 ~-1.75 ~-1.75 as @a[team=Red,tag=game,tag=!dead,dx=2.5,dy=2.5,dz=2.5,limit=1] run function rauch:game/core/ability/wark/r/hit

execute as @s[scores={2=..87}] positioned ^ ^ ^1 run function rauch:game/core/ability/wark/r/move3
kill @s
