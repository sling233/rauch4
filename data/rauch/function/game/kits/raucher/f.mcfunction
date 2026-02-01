execute unless score @s cool3 matches 0 run return 1

execute at @s run summon spider ~ ~0 ~1 {Tags:["setup","raucher_spider","rauch_damagable"],CustomNameVisible:0b,Health:4f,attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.35}]}
execute at @s run summon spider ~0.707 ~0 ~0.707 {Tags:["setup","raucher_spider","rauch_damagable"],CustomNameVisible:0b,Health:4f,attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.35}]}
execute at @s run summon spider ~1 ~0 ~ {Tags:["setup","raucher_spider","rauch_damagable"],CustomNameVisible:0b,Health:4f,attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.35}]}
execute at @s run summon spider ~0.707 ~0 ~-0.707 {Tags:["setup","raucher_spider","rauch_damagable"],CustomNameVisible:0b,Health:4f,attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.35}]}
execute at @s run summon spider ~ ~0 ~-1 {Tags:["setup","raucher_spider","rauch_damagable"],CustomNameVisible:0b,Health:4f,attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.35}]}
execute at @s run summon spider ~-0.707 ~0 ~-0.707 {Tags:["setup","raucher_spider","rauch_damagable"],CustomNameVisible:0b,Health:4f,attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.35}]}
execute at @s run summon spider ~-1 ~0 ~ {Tags:["setup","raucher_spider","rauch_damagable"],CustomNameVisible:0b,Health:4f,attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.35}]}
execute at @s run summon spider ~-0.707 ~0 ~0.707 {Tags:["setup","raucher_spider","rauch_damagable"],CustomNameVisible:0b,Health:4f,attributes:[{id:"minecraft:attack_damage",base:5},{id:"minecraft:follow_range",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"minecraft:scale",base:0.35}]}

execute as @s[team=Red] as @e[type=spider,tag=raucher_spider,tag=setup] run team join Red @s
execute as @s[team=Blue] as @e[type=spider,tag=raucher_spider,tag=setup] run team join Blue @s

scoreboard players set @s raucher_spider_despawn_timer -180
scoreboard players operation @e[type=spider,tag=setup,tag=raucher_spider] pnum = @s pnum

function rauch:game/kits/raucher/f/set_spider_targets

tag @e[type=spider,tag=setup,tag=raucher_spider] remove setup

execute at @s run playsound minecraft:item.crossbow.shoot master @a

scoreboard players operation @s cool3 = @s cool3_target
