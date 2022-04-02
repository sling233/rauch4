execute as @a[tag=game] run function rauch:game/core/framework/move_player
tag @a add lobby
clear @a
execute at @e[type=armor_stand,tag=main] run tp @a ~ ~-20 ~
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @a [{"selector":"@s","color":"green"},{"text":" moved everyone to the Lobby","color":"yellow"}]
