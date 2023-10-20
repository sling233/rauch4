scoreboard players add @s click 1
execute as @s[tag=red] as @e[type=armor_stand,tag=blu,tag=projectile,distance=..7] at @s run function rauch:game/ability/tank/f/destroy
execute as @s[tag=blu] as @e[type=armor_stand,tag=red,tag=projectile,distance=..7] at @s run function rauch:game/ability/tank/f/destroy
execute as @s[tag=red] as @e[type=marker,tag=blu,tag=projectile,distance=..7] at @s run function rauch:game/ability/tank/f/destroy
execute as @s[tag=blu] as @e[type=marker,tag=red,tag=projectile,distance=..7] at @s run function rauch:game/ability/tank/f/destroy
execute as @s[tag=red] as @e[type=marker,tag=blu,tag=indicator,distance=..7] run kill @s
execute as @s[tag=blu] as @e[type=marker,tag=red,tag=indicator,distance=..7] run kill @s

execute at @s[tag=red] run function rauch:game/ability/tank/f/particle_r
execute at @s[tag=blu] run function rauch:game/ability/tank/f/particle_b

execute at @s[scores={click=150..}] run function rauch:game/ability/tank/f/time
