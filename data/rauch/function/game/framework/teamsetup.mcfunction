scoreboard players add Global pnum 1
scoreboard players operation @s pnum = Global pnum

#if mode = wokkaman, add to blue automatically
execute if score Global mode matches 5 run team join Blue @s[team=!Red]

# team setup
execute store result score Global time_red run team list Red
execute store result score Global time_blue run team list Blue
execute as @s[team=!Red,team=!Blue] if score Global time_red <= Global time_blue run team join Red @s
execute as @s[team=!Red,team=!Blue] if score Global time_red > Global time_blue run team join Blue @s

# add entries in game data
data modify storage game_data bolt_hit prepend value {id:-1}
execute store result storage game_data bolt_hit[0].id int 1 run scoreboard players get @s pnum
data modify storage game_data hacker_r_tag prepend value {id:-1}
execute store result storage game_data hacker_r_tag[0].id int 1 run scoreboard players get @s pnum
data modify storage game_data hacker_q_tag prepend value {id:-1}
execute store result storage game_data hacker_q_tag[0].id int 1 run scoreboard players get @s pnum
data modify storage game_data wok_bow_tag prepend value {id:-1}
execute store result storage game_data wok_bow_tag[0].id int 1 run scoreboard players get @s pnum

tag @s remove queue
tag @s remove lobby
tag @s add game
function rauch:game/framework/pregame
