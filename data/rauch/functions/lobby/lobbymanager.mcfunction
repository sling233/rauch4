#ausgangsbedingungen werden gelesen
execute as @s[scores={kit=1..8}] unless score @s kit matches 5 run tag @s add kit
execute as @s[tag=queue] run tag @s add queuetemp
execute at @s as @e[type=armor_stand,tag=map,tag=root,tag=active] if score @s mapId = Global mapId run tag @p add map

#wenn nicht in queue wird in queue gemoved, aber nur wenn map und kit valid sind
execute as @s[tag=!queuetemp,tag=map,tag=kit] run tag @s add temp
execute as @s[tag=temp] run tag @s add queue
execute as @s[tag=temp] run clear @s
tag @s remove temp

#falls queue adding nicht successful war
execute as @s[tag=!kit] run tellraw @s {"text":"You have to select a kit first","color":"red"}
execute as @s[tag=!map] run tellraw @s {"text":"An Admin has to select a Map first","color":"red"}

#wenn in queue
execute as @s[tag=queuetemp] as @s[nbt={SelectedItemSlot:8}] run tag @s add temp
execute as @s[tag=temp] run tag @s remove queue
execute as @s[tag=temp] run clear @s
tag @s remove temp

execute as @s[tag=queuetemp] as @s[nbt={SelectedItemSlot:7}] run team join Blue @s
execute as @s[tag=queuetemp] as @s[nbt={SelectedItemSlot:6}] run team join Red @s
execute as @s[tag=queuetemp] as @s[nbt={SelectedItemSlot:5}] run team join Lobby @s

execute as @s[tag=queuetemp,tag=admin] as @s[nbt={SelectedItemSlot:0}] run function rauch:game/add/gameinit/customteams_start
execute as @s[tag=queuetemp,tag=admin] as @s[nbt={SelectedItemSlot:1}] run function rauch:game/add/gameinit/randomteams_start

tag @s remove queuetemp
tag @s remove kit
tag @s remove map
