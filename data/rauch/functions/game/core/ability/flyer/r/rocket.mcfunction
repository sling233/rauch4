execute at @s[team=Red] positioned ^ ^ ^0.5 run summon firework_rocket ~ ~1.6 ~ {Owner:[I;0,0,0,0],ShotAtAngle:1b,LifeTime:20,Tags:["red","bow","setup"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]}]}}}}
execute at @s[team=Blue] positioned ^ ^ ^0.5 run summon firework_rocket ~ ~1.6 ~ {Owner:[I;0,0,0,0],ShotAtAngle:1b,LifeTime:20,Tags:["blu","bow","setup"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]}]}}}}

execute at @s positioned ^ ^ ^-1.5 run summon minecraft:area_effect_cloud ~ ~1.6 ~ {Tags:["vector"]}
execute at @s as @e[type=firework_rocket,tag=bow,tag=setup] run function rauch:game/core/ability/flyer/r/launch
kill @e[type=area_effect_cloud,tag=vector,limit=1]

execute at @s run playsound minecraft:item.crossbow.shoot master @a
execute if score @s projectileRNum = @s projectileRMax run scoreboard players operation @s cool1 = @s cool1_target
scoreboard players remove @s projectileRNum 1
