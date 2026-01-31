tag @s add temp
execute unless entity @a[tag=t_hit] at @s[team=Red] as @a[team=Blue,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^15 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-15 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Red] as @a[team=Blue,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^7 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-7 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Red] as @a[team=Blue,tag=!dead,tag=game,distance=..7] facing entity @s feet positioned ^ ^ ^4 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-4 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Red] as @a[team=Blue,tag=!dead,tag=game,distance=..3.5] facing entity @s feet positioned ^ ^ ^2 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-2 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Blue] as @a[team=Red,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^15 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-15 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Blue] as @a[team=Red,tag=!dead,tag=game] facing entity @s feet positioned ^ ^ ^7 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-7 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Blue] as @a[team=Red,tag=!dead,tag=game,distance=..7] facing entity @s feet positioned ^ ^ ^4 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-4 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit
execute unless entity @a[tag=t_hit] at @s[team=Blue] as @a[team=Red,tag=!dead,tag=game,distance=..3.5] facing entity @s feet positioned ^ ^ ^2 rotated as @a[tag=temp,limit=1] positioned ^ ^ ^-2 if entity @a[tag=temp,limit=1,distance=..1] run tag @s add t_hit

execute at @s as @a[tag=t_hit,sort=nearest,limit=1] run function rauch:game/kits/wokkaman/sf/hit
execute if entity @a[tag=t_hit] run scoreboard players operation @s cool6 = @s cool6_target
execute unless entity @a[tag=t_hit] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=t_hit] run tellraw @s {"text":"No enemy found!","color":"red"}

tag @a remove t_hit
tag @s remove temp
