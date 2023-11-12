tag @s remove wok_stomp
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a
execute at @s run execute at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 0.5
#execute at @s run particle minecraft:block minecraft:dirt ~ ~1 ~ 2 1.5 2 1 200 force
execute at @s run particle minecraft:block minecraft:cherry_leaves ~ ~1 ~ 2 1.5 2 1 200 force
execute at @s run particle minecraft:dust_plume ~ ~ ~ 1 1 1 0.5 1000 force
execute at @s run particle minecraft:dust_color_transition 1 0.5 1 1.4 0.6 0.3 0.6 ~ ~1 ~ 2 1 2 1 1000 force
execute at @s run particle minecraft:cherry_leaves ~ ~2 ~ 2 1 2 1 300 force
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 2 1 2 0.03 300 force
execute at @s run particle minecraft:explosion ~ ~1 ~ 2 1 2 0.1 10 force
execute at @s[team=Red] as @a[team=Blue,tag=game,tag=!dead,distance=..3.5] run function rauch:game/ability/wokkaman/sq/hit
execute at @s[team=Blue] as @a[team=Red,tag=game,tag=!dead,distance=..3.5] run function rauch:game/ability/wokkaman/sq/hit
