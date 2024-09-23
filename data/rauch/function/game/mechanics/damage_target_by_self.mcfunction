# as player damaging, target has tag t_damage_target, t_damage temp score is damage
# read current damage from attributes (includes buffs)
execute store result score t_calc_damage temp run attribute @s minecraft:generic.attack_damage get 1000
# t_damage is damage
scoreboard players operation t_calc_damage temp *= t_damage temp
# divide by base damage
scoreboard players set 9 const 9
scoreboard players set 11 const 11
scoreboard players set 12 const 12
scoreboard players set 14 const 14
scoreboard players set 20 const 20
scoreboard players set 28 const 28
execute as @s[scores={kit=1}] run scoreboard players operation t_calc_damage temp /= 14 const
execute as @s[scores={kit=2}] run scoreboard players operation t_calc_damage temp /= 12 const
execute as @s[scores={kit=3}] run scoreboard players operation t_calc_damage temp /= 9 const
execute as @s[scores={kit=4}] run scoreboard players operation t_calc_damage temp /= 11 const
execute as @s[scores={kit=5}] run scoreboard players operation t_calc_damage temp /= 12 const
execute as @s[scores={kit=6}] run scoreboard players operation t_calc_damage temp /= 28 const
execute as @s[scores={kit=7}] run scoreboard players operation t_calc_damage temp /= 9 const
execute as @s[scores={kit=8}] run scoreboard players operation t_calc_damage temp /= 11 const
execute as @s[scores={kit=9}] run scoreboard players operation t_calc_damage temp /= 20 const

execute store result storage temp damage int 0.001 run scoreboard players get t_calc_damage temp
function rauch:game/mechanics/damage_macro with storage temp
data remove storage temp damage

scoreboard players set 500 const 500
# add to damage dealt stats because /damage doesn't do that automatically
scoreboard players operation t_calc_damage temp /= 500 const
scoreboard players operation @s stats_g_damage_d += t_calc_damage temp

scoreboard players reset t_calc_damage temp
scoreboard players reset t_damage temp
