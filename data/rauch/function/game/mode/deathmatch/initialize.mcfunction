scoreboard objectives setdisplay sidebar.team.red
scoreboard objectives setdisplay sidebar.team.blue


execute as @a[team=Red,tag=game] run function rauch:game/framework/tp_to_red_spawn
execute as @a[team=Blue,tag=game] run function rauch:game/framework/tp_to_blue_spawn
execute as @a[tag=game] at @s run spawnpoint @s ~ ~ ~
