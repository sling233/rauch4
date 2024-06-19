# as player damaging, target has tag t_damage_target, .damage temp score is damage
# read current damage from attributes (includes buffs)
execute store result score .calc_damage temp run attribute @s minecraft:generic.attack_damage get 1000
# .damage is damage
scoreboard players operation .calc_damage temp *= .damage temp
# divide by base damage
execute as @s[scores={kit=1}] run scoreboard players operation .calc_damage temp /= 14 global
execute as @s[scores={kit=2}] run scoreboard players operation .calc_damage temp /= 12 global
execute as @s[scores={kit=3}] run scoreboard players operation .calc_damage temp /= 9 global
execute as @s[scores={kit=4}] run scoreboard players operation .calc_damage temp /= 11 global
execute as @s[scores={kit=5}] run scoreboard players operation .calc_damage temp /= 12 global
execute as @s[scores={kit=6}] run scoreboard players operation .calc_damage temp /= 28 global
execute as @s[scores={kit=7}] run scoreboard players operation .calc_damage temp /= 9 global
execute as @s[scores={kit=8}] run scoreboard players operation .calc_damage temp /= 11 global
execute as @s[scores={kit=9}] run scoreboard players operation .calc_damage temp /= 20 global

execute store result storage temp damage int 0.001 run scoreboard players get .calc_damage temp
function rauch:game/mechanics/damage_macro with storage temp
data remove storage temp damage

# add to damage dealt stats because /damage doesn't do that automatically
scoreboard players operation .calc_damage temp /= 500 global
scoreboard players operation @s stats_g_damage_d += .calc_damage temp

scoreboard players reset .calc_damage temp
scoreboard players reset .damage temp
