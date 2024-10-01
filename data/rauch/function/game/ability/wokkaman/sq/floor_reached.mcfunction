# as player that is no longer being stepped on
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a
execute at @s run execute at @s run playsound minecraft:item.totem.use master @a ~ ~ ~ 0.5
#execute at @s run particle minecraft:block minecraft:dirt ~ ~1 ~ 2 1.5 2 1 200 force
execute at @s run particle minecraft:block{block_state:"minecraft:cherry_leaves"} ~ ~1 ~ 2 1.5 2 1 200 force
execute at @s run particle minecraft:dust_plume ~ ~ ~ 1 1 1 0.5 1000 force
execute at @s run particle minecraft:dust_color_transition{from_color:[1.0,0.5,1.0],scale:1.4,to_color:[0.6,0.3,0.6]} ~ ~1 ~ 2 1 2 1 1000 force
#execute at @s run particle minecraft:cherry_leaves ~ ~2 ~ 2 1 2 1 300 force
execute at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 2 1 2 0.03 300 force
execute at @s run particle minecraft:explosion ~ ~1 ~ 2 1 2 0.1 10 force

execute at @s[team=Blue] as @a[team=Blue,tag=game,distance=..4] run say in range: @s
execute at @s[team=Red] as @a[team=Red,tag=game,distance=..4] run function rauch:game/ability/wokkaman/sq/floor_reached_damage
execute at @s[team=Blue] as @a[team=Blue,tag=game,distance=..4] run function rauch:game/ability/wokkaman/sq/floor_reached_damage
#tag @a remove t_damager
function rauch:game/ability/wokkaman/sq/un_step_on
