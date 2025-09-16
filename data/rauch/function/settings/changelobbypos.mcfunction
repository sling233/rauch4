execute at @s align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobby_update"]}
data modify storage lobby_data position set from entity @e[type=marker,tag=lobby_update,limit=1] Pos
execute at @e[type=marker,tag=lobby_update] run setworldspawn ~ ~ ~
kill @e[type=marker,tag=lobby_update]

execute if data storage lobby_data version run tellraw @s {"text":"Removed prebuilt lobby data","color":"green"}
execute if data storage lobby_data version run data remove storage lobby_data version
execute if data storage lobby_data spawn_location run data remove storage lobby_data spawn_location

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @s {"text":"Set new Lobby Position","color":"green"}
