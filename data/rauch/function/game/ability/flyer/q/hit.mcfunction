#executed at Pikka as hit player

scoreboard players add @s stun 60
function rauch:game/mechanics/stuninit

# damage calculation (scale with buffs)
scoreboard players set 11 const 11
scoreboard players set 48 const 48

# read current damage from attributes (includes buffs)
execute store result score t_calc_damage temp run attribute @p minecraft:generic.attack_damage get 1000
# 48 is the damage of the ground slam
scoreboard players operation t_calc_damage temp *= 48 const
# 11 is normal damage of a pikka
scoreboard players operation t_calc_damage temp /= 11 const

execute store result storage temp damage int 0.001 run scoreboard players get t_calc_damage temp

function rauch:game/ability/flyer/q/damage_macro with storage temp

# add to damage dealt stats because /damage doesn't do that automatically
scoreboard players set 500 const 500
scoreboard players operation t_calc_damage temp /= 500 const
scoreboard players operation @s stats_g_damage_d += t_calc_damage temp

scoreboard players reset t_calc_damage temp
