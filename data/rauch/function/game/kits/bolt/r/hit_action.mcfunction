# execute at player hit, as bolt
execute as @s[scores={bolt=1..}] run function rauch:game/kits/bolt/r/q_tag

# damage calculation (scale with buffs)
# dmg = proj_dmg * bolt_current_ dmg / bolt_base_dmg
scoreboard players set 15 const 15

# read base damage from attribute
execute store result score t_bolt_base_dmg temp run attribute @s minecraft:attack_damage base get 10
# read current damage from attributes (includes buffs)
execute store result score t_calc_damage temp run attribute @s minecraft:attack_damage get 10000
# 15 is the damage of the projectile
scoreboard players operation t_calc_damage temp *= 15 const
# 14 is normal damage of a bolt
scoreboard players operation t_calc_damage temp /= t_bolt_base_dmg temp

execute store result storage temp damage int 0.001 run scoreboard players get t_calc_damage temp

function rauch:game/kits/bolt/r/damage_macro with storage temp

# add to damage dealt stats because /damage doesn't do that automatically
scoreboard players set 500 const 500
scoreboard players operation t_calc_damage temp /= 500 const
scoreboard players operation @s stats_g_damage_d += t_calc_damage temp

scoreboard players reset t_calc_damage temp
scoreboard players reset t_bolt_base_dmg temp
