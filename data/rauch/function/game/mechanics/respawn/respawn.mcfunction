execute as @s[team=Red] run function rauch:game/framework/tp_to_red_spawn
execute as @s[team=Blue] run function rauch:game/framework/tp_to_blue_spawn
gamemode adventure @s
function rauch:game/ui/bossbar/respawn/invisible
tag @s remove dead
effect give @s instant_health 10 10 true
effect give @s minecraft:hunger 6 255 true
execute if score @s cool1 > @s cool1_respawn run scoreboard players operation @s cool1 = @s cool1_respawn
execute if score @s cool2 > @s cool2_respawn run scoreboard players operation @s cool2 = @s cool2_respawn
execute if score @s cool3 > @s cool3_respawn run scoreboard players operation @s cool3 = @s cool3_respawn
execute as @s[scores={kit=3}] run scoreboard players operation @s projectileRNum = @s projectileRNumRespawn
execute as @s[scores={kit=3}] run scoreboard players operation @s cool1 = @s cool1_target
