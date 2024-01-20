execute at @s align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby_update"]}
data modify storage lobby_data position set from entity @e[type=marker,tag=lobby_update,limit=1] Pos
kill @e[type=marker,tag=lobby_update]

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @s {"text":"Set new Lobby Position","color":"green"}
