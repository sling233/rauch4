execute as @a[scores={death=1..},gamemode=!spectator] run gamemode spectator @s
execute as @a[scores={death=1..}] run tag @s add dead
execute as @a[scores={death=1..}] run scoreboard players reset @s death

execute unless entity @a[team=Red,tag=!dead] unless entity @a[team=Blue,tag=!dead] run function rauch:game/add/stats/tie
execute if entity @a[tag=game] unless entity @a[team=Red,tag=!dead] run function rauch:game/add/stats/win_blue
execute if entity @a[tag=game] unless entity @a[team=Blue,tag=!dead] run function rauch:game/add/stats/win_red
