execute as @a[team=Red,tag=game] run function rauch:game/framework/tp_to_red_spawn
execute as @a[team=Blue,tag=game] run function rauch:game/framework/tp_to_blue_spawn
execute as @a[tag=game] at @s run spawnpoint @s ~ ~ ~

scoreboard players set Global killNumRed 0
scoreboard players set Global killNumBlue 0
scoreboard objectives setdisplay sidebar killsDisplay

tellraw @a[tag=game] [{"text":"[Respawn Deathmatch]: First Team to reach ","color":"yellow"},{"score":{"name":"Global","objective":"rd_kills_to_win"}},{"text":" kills wins!"}]
