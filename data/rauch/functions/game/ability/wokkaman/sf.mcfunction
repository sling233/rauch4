tag @s add temp
execute at @s[team=Red] as @a[team=Blue,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^20 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-20 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Red] as @a[team=Blue,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^7 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-7 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Red] as @a[team=Blue,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^3 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-3 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit

execute at @s[team=Blue] as @a[team=Red,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^20 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-20 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Blue] as @a[team=Red,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^7 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-7 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Blue] as @a[team=Red,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^3 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-3 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit

execute at @s as @a[tag=t_hit,sort=furthest,limit=1] run function rauch:game/ability/wokkaman/sf/hit
execute unless entity @a[tag=t_hit] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=t_hit] run tellraw @s {"text":"No enemy found!","color":"red"}

tag @a remove t_hit
tag @s remove temp
