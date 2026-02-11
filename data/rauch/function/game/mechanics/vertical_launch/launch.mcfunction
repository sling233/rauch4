##################################################
# takes $(power) argument, ranging from 1 to 255
##################################################
scoreboard players set 256 const 256
$execute if score 256 const matches ..$(power) run return run tellraw @a {text:"Cannot launch with power higher than 255, current: $(power)",color:"red"}

execute store result score t_rotation_y temp run data get entity @s Rotation[1]
# rot: 0 = straight, negative = looking up, pos = looking down
$execute if score t_rotation_y temp matches ..-45 run item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical_looking_up": $(power)\
  }\
}
$execute if score t_rotation_y temp matches -44..44 run item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical_looking_hor": $(power)\
  }\
}
$execute if score t_rotation_y temp matches 45.. run item modify entity @s saddle {\
  "function": "minecraft:set_enchantments",\
  "enchantments": {\
    "rauch:impulse_vertical_looking_down": $(power)\
  }\
}
# the previous commands cause the launch to be weaker by ~71% when looking at a vertical 45 degree angle.
# the code below fixes this with a negligible amount of error

# looking for: a level for the enchantment to apply a boost again so that the looking diagonally penalty disappears
# best (quadratic) correction function for angles between 0 and 45 i could find:
# correction_level = level * ((angle/71.96875)^2 - 0.006591797)

scoreboard players operation correction_level temp = t_rotation_y temp

# transform angle (can be between 0 and 45 after this)
# if angle < 0:
#   angle = -angle
# if angle >= 46:
#   angle = 90 - angle
scoreboard players set -1 const -1
execute if score correction_level temp matches ..-1 run scoreboard players operation correction_level temp *= -1 const
execute if score correction_level temp matches 46.. run scoreboard players remove correction_level temp 90
execute if score correction_level temp matches ..-1 run scoreboard players operation correction_level temp *= -1 const

# max int 2,147,483,647
# improve precision by scaling certain values
# angle * 10^7
scoreboard players set 10000000 const 10000000
scoreboard players operation correction_level temp *= 10000000 const

# 71.9... * 10^3 (71... = div)
scoreboard players set 71969 const 71969
# angle * 10^7 / (div * 10^3)
scoreboard players operation correction_level temp /= 71969 const
# = (angle / div) * 10^4

# square (*10^8)
scoreboard players operation correction_level temp *= correction_level temp

# - 0.006591796875 * 10^8
scoreboard players remove correction_level temp 659180

# * 10^-2
scoreboard players set 100 const 100
scoreboard players operation correction_level temp /= 100 const

# * level (level is 120 for wark)
scoreboard players set 120 const 120
scoreboard players operation correction_level temp *= 120 const

# * 10^-6
scoreboard players set 1000000 const 1000000
scoreboard players operation correction_level temp /= 1000000 const

execute store result storage temp level int 1 run scoreboard players get correction_level temp
function rauch:game/mechanics/vertical_launch/correct with storage temp
data remove storage temp level
scoreboard players reset t_rotation_y temp
scoreboard players reset correction_level temp