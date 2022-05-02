#scoreboard players operation @s cool1 = @s cool1_target
#scoreboard players set @s flyerRSchedule -3
#scoreboard players operation @s flyerRSchedule *= @s projectileRNum
#scoreboard players add @s flyerRSchedule 2
execute as @s[team=Red] run function rauch:game/core/ability/flyer/r/spawn_red
execute as @s[team=Blue] run function rauch:game/core/ability/flyer/r/spawn_blue
scoreboard players set @s slime_despawn_timer -5
scoreboard players operation @s cool1 = @s cool1_target
