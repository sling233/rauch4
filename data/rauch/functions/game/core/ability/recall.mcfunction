execute if entity @s[scores={recall=100}] run scoreboard players reset @s walk
scoreboard players remove @s recall 1

execute if entity @s[scores={walk=5..}] run tag @s add cancel
execute if entity @s[tag=hack] run tag @s add cancel
execute if entity @s[nbt={HurtTime:10s}] run tag @s add cancel

execute if entity @s[tag=cancel] run scoreboard players reset @s recall
execute if entity @s[tag=cancel] run tellraw @p {"text":"Recall cancelled!","color":"red"}
execute if entity @s[tag=cancel] run tag @s remove cancel


execute as @s[scores={recall=..0},team=Red] at @e[type=armor_stand,tag=t1,tag=map,tag=active] run tp @s ~ ~-20 ~
execute as @s[scores={recall=..0},team=Blue] at @e[type=armor_stand,tag=t2,tag=map,tag=active] run tp @s ~ ~-20 ~

scoreboard players reset @s walk
scoreboard players reset @s[scores={recall=..0}] recall
