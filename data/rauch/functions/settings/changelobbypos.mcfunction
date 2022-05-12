execute at @s align xyz run tp @e[type=armor_stand,tag=main] ~0.5 ~20 ~0.5
execute at @s align xyz run tp @e[type=armor_stand,tag=root,tag=map] ~0.5 ~20 ~0.5

forceload remove all
execute at @s align xyz run forceload add ~ ~

playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @s {"text":"Set new Lobby Position","color":"green"}
