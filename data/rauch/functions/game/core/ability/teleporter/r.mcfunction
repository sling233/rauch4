execute as @s[team=Red] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:20,Tags:["red","teleporter","setup","projectile"]}
execute as @s[team=Blue] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:20,Tags:["blu","teleporter","setup","projectile"]}
execute at @s run tp @e[type=area_effect_cloud,tag=teleporter,tag=setup] @s
execute at @s as @e[type=area_effect_cloud,tag=teleporter,tag=setup] run tp @s ~ ~1.6 ~
execute at @s run scoreboard players operation @e[type=area_effect_cloud,tag=teleporter,tag=setup] pnum = @s pnum
tag @e[type=area_effect_cloud,tag=teleporter,tag=setup] remove setup
execute at @s run playsound minecraft:entity.bat.takeoff master @a

scoreboard players operation @s cool1 = @s cool1_target
