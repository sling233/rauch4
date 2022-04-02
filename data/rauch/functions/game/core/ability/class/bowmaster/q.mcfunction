execute at @s[team=Red] positioned ^ ^ ^1 run summon firework_rocket ~ ~1.6 ~ {Owner:[I;0,0,0,0],ShotAtAngle:1b,LifeTime:20,Tags:["red","bow","setup"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]}]}}}}
execute at @s[team=Blue] positioned ^ ^ ^1 run summon firework_rocket ~ ~1.6 ~ {Owner:[I;0,0,0,0],ShotAtAngle:1b,LifeTime:20,Tags:["blu","bow","setup"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;2037759]}]}}}}
#execute at @s positioned ^0.407 ^ ^0.914 run summon firework_rocket ~ ~1.6 ~ {Owner:[I;0,0,0,0],ShotAtAngle:1b,LifeTime:20,Tags:["bow","setup"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;346367]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;1848319]}]}}}}
#execute at @s positioned ^-0.407 ^ ^0.914 run summon firework_rocket ~ ~1.6 ~ {Owner:[I;0,0,0,0],ShotAtAngle:1b,LifeTime:20,Tags:["bow","setup"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;346367]},{Type:4,Colors:[I;2037759]},{Type:4,Colors:[I;1848319]}]}}}}

#execute at @s positioned ^ ^ ^1 run summon arrow ~ ~1.6 ~ {Owner:[I;0,0,0,0],life:1100,ShotFromCrossbow:1b,PierceLevel:5b,pickup:0b,damage:6d,crit:0b,Tags:["setup","bow"]}
#execute at @s positioned ^0.139 ^ ^0.99 run summon arrow ~ ~1.6 ~ {Owner:[I;0,0,0,0],life:1100,ShotFromCrossbow:1b,PierceLevel:5b,pickup:0b,damage:6d,crit:0b,Tags:["setup","bow"]}
#execute at @s positioned ^-0.139 ^ ^0.99 run summon arrow ~ ~1.6 ~ {Owner:[I;0,0,0,0],life:1100,ShotFromCrossbow:1b,PierceLevel:5b,pickup:0b,damage:6d,crit:0b,Tags:["setup","bow"]}
#execute at @s positioned ^0.276 ^ ^0.961 run summon arrow ~ ~1.6 ~ {Owner:[I;0,0,0,0],life:1100,ShotFromCrossbow:1b,PierceLevel:5b,pickup:0b,damage:6d,crit:0b,Tags:["setup","bow"]}
#execute at @s positioned ^-0.276 ^ ^0.961 run summon arrow ~ ~1.6 ~ {Owner:[I;0,0,0,0],life:1100,ShotFromCrossbow:1b,PierceLevel:5b,pickup:0b,damage:6d,crit:0b,Tags:["setup","bow"]}
#execute at @s positioned ^0.407 ^ ^0.914 run summon arrow ~ ~1.6 ~ {Owner:[I;0,0,0,0],life:1100,ShotFromCrossbow:1b,PierceLevel:5b,pickup:0b,damage:6d,crit:0b,Tags:["setup","bow"]}
#execute at @s positioned ^-0.407 ^ ^0.914 run summon arrow ~ ~1.6 ~ {Owner:[I;0,0,0,0],life:1100,ShotFromCrossbow:1b,PierceLevel:5b,pickup:0b,damage:6d,crit:0b,Tags:["setup","bow"]}

execute at @s run summon minecraft:area_effect_cloud ~ ~1.6 ~ {Tags:["vector"]}
#execute at @s as @e[type=arrow,tag=bow,tag=setup] run function rauch:game/core/ability/class/bowmaster/q/launch
execute at @s as @e[type=firework_rocket,tag=bow,tag=setup] run function rauch:game/core/ability/class/bowmaster/q/launch
kill @e[type=area_effect_cloud,tag=vector,limit=1]

execute at @s run playsound minecraft:item.crossbow.shoot master @a
scoreboard players operation @s cool2 = @s cool2_target
