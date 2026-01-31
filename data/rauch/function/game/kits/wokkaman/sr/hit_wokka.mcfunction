scoreboard players set 20 const 20
execute at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
# damage calculation (scale with buffs)
# read current damage from attributes (includes buffs)
execute store result score t_calc_damage temp run attribute @s minecraft:attack_damage get 1000
# 20 is the damage of the bow
scoreboard players operation t_calc_damage temp *= 20 const
# 20 is normal damage of a wokkaman
scoreboard players operation t_calc_damage temp /= 20 const

execute store result storage temp damage int 0.001 run scoreboard players get t_calc_damage temp

function rauch:game/kits/wokkaman/sr/damage_macro with storage temp

# add to damage dealt stats because /damage doesn't do that automatically
scoreboard players set 500 const 500
scoreboard players operation t_calc_damage temp /= 500 const
scoreboard players operation @s stats_g_damage_d += t_calc_damage temp

scoreboard players reset t_calc_damage temp
