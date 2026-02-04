scoreboard players set @s flyerQSchedule 1
tag @s remove allow_cancel
effect clear @s minecraft:levitation
attribute @s minecraft:gravity base reset
execute at @s run execute at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 4 1 0.02
execute at @s run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~1 ~ 2 1.5 2 1 200 force
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 2 1 2 0.03 300 force
execute at @s run particle minecraft:explosion ~ ~1 ~ 2 1 2 0.1 10 force
execute at @s[team=Red] as @a[team=Blue,tag=game,tag=!dead,distance=..4] run function rauch:game/kits/pikka/q/hit
execute at @s[team=Blue] as @a[team=Red,tag=game,tag=!dead,distance=..4] run function rauch:game/kits/pikka/q/hit
execute at @s[team=Red] as @e[team=Blue,tag=rauch_damagable,distance=..4] run damage @s 10
execute at @s[team=Blue] as @e[team=Red,tag=rauch_damagable,distance=..4] run damage @s 10

#execute at @s run summon minecraft:firework_rocket ~ ~2 ~ {Motion:[0d,-1d,0d],Owner:[I;0,0,0,0],LifeTime:0,Silent:1b,Tags:["flyer","setup"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;5526612]},{Type:4,Colors:[I;5526612]},{Type:4,Colors:[I;5526612]},{Type:4,Colors:[I;5526612]},{Type:4,Colors:[I;5526612]},{Type:4,Colors:[I;5526612]},{Type:4,Colors:[I;5526612]}]}}}}
#data modify entity @e[type=minecraft:firework_rocket,tag=flyer,tag=setup,limit=1] Owner set from entity @s UUID
#tag @e[type=minecraft:firework_rocket,tag=flyer,tag=setup,limit=1] remove setup
