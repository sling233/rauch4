# execute at player hit, as bolt
execute as @s[scores={bolt=1..}] run function rauch:game/ability/bolt/r/q_tag

# damage calculation (scale with buffs)
scoreboard objectives add calc_damage dummy
scoreboard objectives add 14 dummy
scoreboard objectives add 15 dummy
scoreboard players set @s 14 14
scoreboard players set @s 15 15

# read current damage from attributes (includes buffs)
execute store result score @s calc_damage run attribute @s minecraft:generic.attack_damage get 1000
# 15 is the damage of the projectile
scoreboard players operation @s calc_damage *= @s 15
# 14 is normal damage of a bolt
scoreboard players operation @s calc_damage /= @s 14

execute store result storage temp damage int 0.001 run scoreboard players get @s calc_damage

function rauch:game/ability/bolt/r/damage_macro with storage temp

# add to damage dealt stats because /damage doesn't do that automatically
scoreboard objectives add 500 dummy
scoreboard players set @s 500 500
scoreboard players operation @s calc_damage /= @s 500
scoreboard players operation @s stats_g_damage_d += @s calc_damage
scoreboard objectives remove 500

scoreboard objectives remove calc_damage
scoreboard objectives remove 14
scoreboard objectives remove 15
