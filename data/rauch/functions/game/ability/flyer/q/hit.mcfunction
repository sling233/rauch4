#executed at Pikka as hit player

scoreboard players add @s stun 60
function rauch:game/mechanics/stuninit

# damage calculation (scale with buffs)
scoreboard objectives add calc_damage dummy
scoreboard objectives add 11 dummy
scoreboard objectives add 48 dummy
scoreboard players set @s 11 11
scoreboard players set @s 48 48

# read current damage from attributes (includes buffs)
execute store result score @s calc_damage run attribute @p minecraft:generic.attack_damage get 1000
# 48 is the damage of the ground slam
scoreboard players operation @s calc_damage *= @s 48
# 11 is normal damage of a pikka
scoreboard players operation @s calc_damage /= @s 11

execute store result storage temp damage int 0.001 run scoreboard players get @s calc_damage

function rauch:game/ability/flyer/q/damage_macro with storage temp


scoreboard objectives remove calc_damage
scoreboard objectives remove 11
scoreboard objectives remove 48
