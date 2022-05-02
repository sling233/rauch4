execute as @s[team=Red] run function rauch:game/core/ability/zarzahn/q/spawn_red
execute as @s[team=Blue] run function rauch:game/core/ability/zarzahn/q/spawn_blue
scoreboard players set @s slime_despawn_timer -5
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.5 200 force
execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 4 150 force
execute at @s run particle minecraft:block minecraft:dirt ~ ~0.1 ~ 3 0.1 3 1 150 force
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.1 0.1 0.1 0.5 300 force @a[scores={particleDensity=1}]
execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.1 0.1 0.1 3 650 force @a[scores={particleDensity=1}]
execute at @s run particle minecraft:block minecraft:dirt ~ ~0.1 ~ 3 0.1 3 1 150 force @a[scores={particleDensity=1}]
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1
scoreboard players operation @s cool2 = @s cool2_target
