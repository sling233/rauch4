execute if score @s decode >= Global 2048 run tag @s add decode12
execute as @s[tag=decode12] run scoreboard players operation @s decode -= Global 2048
execute if score @s decode >= Global 1024 run tag @s add decode11
execute as @s[tag=decode11] run scoreboard players operation @s decode -= Global 1024
execute if score @s decode >= Global 512 run tag @s add decode10
execute as @s[tag=decode10] run scoreboard players operation @s decode -= Global 512
execute if score @s decode >= Global 256 run tag @s add decode9
execute as @s[tag=decode9] run scoreboard players operation @s decode -= Global 256
execute if score @s decode >= Global 128 run tag @s add decode8
execute as @s[tag=decode8] run scoreboard players operation @s decode -= Global 128
execute if score @s decode >= Global 64 run tag @s add decode7
execute as @s[tag=decode7] run scoreboard players operation @s decode -= Global 64
execute if score @s decode >= Global 32 run tag @s add decode6
execute as @s[tag=decode6] run scoreboard players operation @s decode -= Global 32
execute if score @s decode >= Global 16 run tag @s add decode5
execute as @s[tag=decode5] run scoreboard players operation @s decode -= Global 16
execute if score @s decode >= Global 8 run tag @s add decode4
execute as @s[tag=decode4] run scoreboard players operation @s decode -= Global 8
execute if score @s decode >= Global 4 run tag @s add decode3
execute as @s[tag=decode3] run scoreboard players operation @s decode -= Global 4
execute if score @s decode >= Global 2 run tag @s add decode2
execute as @s[tag=decode2] run scoreboard players operation @s decode -= Global 2
execute if score @s decode >= Global 1 run tag @s add decode1
execute as @s[tag=decode1] run scoreboard players operation @s decode -= Global 1

execute unless score @s decode = Global 0 run tag @s add decodeerror
execute as @s[tag=decodeerror] run function rauch:game/core/mechanics/utility/decode_error
