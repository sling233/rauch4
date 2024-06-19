# ugly code
#ausgangsbedingungen werden gelesen
execute as @s[scores={kit=1..9}] run tag @s add kit
execute if data storage map_data active run tag @s add map
execute as @s[tag=!queue,nbt={SelectedItemSlot:7}] run tag @s add join
execute as @s[tag=!queue,nbt={SelectedItemSlot:6}] run tag @s add spectate
execute as @s[tag=queue,nbt={SelectedItemSlot:8}] run tag @s add leave
execute as @s[tag=queue,nbt=!{SelectedItemSlot:8}] run tag @s add color
# ^ could also be an admin starting the game but it doesn't interfere ^
execute as @s[tag=admin] as @s[nbt={SelectedItemSlot:1}] run tag @s add start

#falls queue adding nicht successful war
execute as @s[tag=!kit,tag=join] run tellraw @s {"text":"You have to select a kit first","color":"red"}

#wenn nicht in queue wird in queue gemoved, aber nur wenn map und kit valid sind und kein game läuft
execute as @s[tag=join,tag=kit] unless score Global game_running matches 1 run tag @s add valid
execute as @s[tag=valid] run tag @s add queue
execute as @s[tag=valid] run team join Random @s
execute as @s[tag=valid] run clear @s
tag @s remove valid

#wenn leaving queue
execute as @s[tag=leave] run tag @s remove queue
execute as @s[tag=leave] run clear @s

# teleport to spawn when not queue
execute as @s[tag=queue] as @s[nbt={SelectedItemSlot:4}] run function rauch:lobby/tp_to_lobby
execute as @s[tag=!queue] as @s[nbt={SelectedItemSlot:5}] run function rauch:lobby/tp_to_lobby

# change team
execute as @s[tag=color] as @s[nbt={SelectedItemSlot:7}] run team join Blue @s
execute as @s[tag=color] as @s[nbt={SelectedItemSlot:6}] run team join Red @s
execute as @s[tag=color] as @s[nbt={SelectedItemSlot:5}] run team join Random @s

# spectate
execute as @s[tag=spectate] if score Global game_running matches 1 run tag @s add valid
execute as @s[tag=valid] run function rauch:game/framework/spectate_start
execute as @s[tag=spectate,tag=!valid] run tellraw @s {"text":"There is no game running at the moment","color":"red"}
tag @s remove valid

# admin starts game
execute as @s[tag=start,tag=map] run function rauch:game/framework/gameinit/customteams_start
execute as @s[tag=start,tag=!map] run tellraw @s {"text":"A Map has to be selected first","color":"red"}
#execute as @s[tag=queuetemp,tag=admin] as @s[nbt={SelectedItemSlot:1}] run function rauch:game/framework/gameinit/randomteams_start

tag @s remove kit
tag @s remove map
tag @s remove join
tag @s remove leave
tag @s remove color
tag @s remove spectate
tag @s remove start
