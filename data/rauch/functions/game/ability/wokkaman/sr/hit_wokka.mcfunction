# damage calculation (scale with buffs)
scoreboard objectives add calc_damage dummy
# read current damage from attributes (includes buffs)
execute store result score @s calc_damage run attribute @s minecraft:generic.attack_damage get 1000
# 20 is the damage of the bow
scoreboard players operation @s calc_damage *= Global 20
# 20 is normal damage of a wokkaman
scoreboard players operation @s calc_damage /= Global 20

execute store result storage temp damage int 0.001 run scoreboard players get @s calc_damage

function rauch:game/ability/wokkaman/sr/damage_macro with storage temp

# add to damage dealt stats because /damage doesn't do that automatically
scoreboard objectives add 500 dummy
scoreboard players set @s 500 500
scoreboard players operation @s calc_damage /= @s 500
scoreboard players operation @s stats_g_damage_d += @s calc_damage
scoreboard objectives remove 500

scoreboard objectives remove calc_damage
