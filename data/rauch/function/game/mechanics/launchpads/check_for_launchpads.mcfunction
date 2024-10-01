execute at @s if block ~ ~-0.1 ~ ochre_froglight run function rauch:game/mechanics/launchpads/launch1
execute at @s if block ~ ~-0.1 ~ verdant_froglight run function rauch:game/mechanics/launchpads/launch2
execute at @s if block ~ ~-0.1 ~ pearlescent_froglight run function rauch:game/mechanics/launchpads/launch3
execute unless score t_was_launched_this_tick temp matches 1 run tag @s add can_be_launched
scoreboard players reset t_was_launched_this_tick temp
