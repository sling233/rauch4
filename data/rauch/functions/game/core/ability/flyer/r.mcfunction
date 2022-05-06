execute as @s[team=Red] run function rauch:game/core/ability/flyer/r/spawn_red
execute as @s[team=Blue] run function rauch:game/core/ability/flyer/r/spawn_blue
scoreboard players set @s slime_despawn_timer -5

execute at @s run playsound minecraft:entity.ender_dragon.flap master @a
execute at @s run particle minecraft:cloud ~ ~0.3 ~ 0.2 0.2 0.2 0.3 60 force
scoreboard players operation @s cool1 = @s cool1_target
