execute as @s[tag=red] as @e[type=area_effect_cloud,tag=blu,tag=projectile,distance=..7] at @s run function rauch:game/core/ability/class/tank/r/destroy
execute as @s[tag=blu] as @e[type=area_effect_cloud,tag=red,tag=projectile,distance=..7] at @s run function rauch:game/core/ability/class/tank/r/destroy
execute at @s run function rauch:game/core/ability/class/tank/r/particle
scoreboard players reset @s click
