execute as @a[tag=game] run function rauch:game/framework/move_player
tag @a add lobby
clear @a
execute as @a run function rauch:lobby/tp_to_lobby

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @a [{"selector":"@s","color":"green"},{"text":" moved everyone to the Lobby","color":"yellow"}]
