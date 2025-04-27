function rauch:game/framework/end_game
execute as @a[tag=!lobby] run function rauch:lobby/join_lobby
execute as @a run function rauch:lobby/tp_to_lobby

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @a [{"selector":"@s","color":"green"},{"text":" moved everyone to the Lobby","color":"yellow"}]
