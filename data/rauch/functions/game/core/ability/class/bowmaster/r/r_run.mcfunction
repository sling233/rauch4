scoreboard players add @s click 1
kill @s[scores={click=160..}]

execute at @s positioned ~ ~1 ~ run particle minecraft:dust 0.5 0.5 0.5 1 ~ ~ ~ 0.2 0.4 0.2 1 1 force
#execute at @s run kill @e[type=arrow,distance=..1.2]
#execute at @s positioned ~ ~1 ~ run kill @e[type=arrow,distance=..1.2]
