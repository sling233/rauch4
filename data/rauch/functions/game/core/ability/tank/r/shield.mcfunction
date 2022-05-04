scoreboard players add @s click 1
execute as @s[tag=red] as @e[type=area_effect_cloud,tag=blu,tag=projectile,distance=..7] at @s run function rauch:game/core/ability/tank/r/destroy
execute as @s[tag=blu] as @e[type=area_effect_cloud,tag=red,tag=projectile,distance=..7] at @s run function rauch:game/core/ability/tank/r/destroy
execute as @s[tag=red] as @e[type=armor_stand,tag=blu,tag=projectile,distance=..7] at @s run function rauch:game/core/ability/tank/r/destroy
execute as @s[tag=blu] as @e[type=armor_stand,tag=red,tag=projectile,distance=..7] at @s run function rauch:game/core/ability/tank/r/destroy
execute as @s[tag=red] as @e[type=marker,tag=blu,tag=projectile,distance=..7] at @s run function rauch:game/core/ability/tank/r/destroy
execute as @s[tag=blu] as @e[type=marker,tag=red,tag=projectile,distance=..7] at @s run function rauch:game/core/ability/tank/r/destroy
execute as @s[tag=red] as @e[type=minecraft:area_effect_cloud,tag=blu,tag=indicator,distance=..7] run kill @s
execute as @s[tag=blu] as @e[type=minecraft:area_effect_cloud,tag=red,tag=indicator,distance=..7] run kill @s

execute at @s[tag=red] run function rauch:game/core/ability/tank/r/particler
execute at @s[tag=blu] run function rauch:game/core/ability/tank/r/particleb

execute at @s[scores={click=150..}] run function rauch:game/core/ability/tank/r/time
