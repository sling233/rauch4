scoreboard players add Global pnum 1
scoreboard players operation @s pnum = Global pnum
execute store result score Global time_red run team list Red
execute store result score Global time_blue run team list Blue
execute as @s[team=!Red,team=!Blue] if score Global time_red <= Global time_blue run team join Red @s
execute as @s[team=!Red,team=!Blue] if score Global time_red > Global time_blue run team join Blue @s

tag @s remove queue
tag @s remove lobby
tag @s add game
function rauch:game/core/framework/pregame
