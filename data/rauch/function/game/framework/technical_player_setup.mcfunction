# set pnum
scoreboard players add t_pnum temp 1
scoreboard players operation @s pnum = t_pnum temp

# add entries in game data
data modify storage game_data bolt_hit prepend value {id:-1}
execute store result storage game_data bolt_hit[0].id int 1 run scoreboard players get @s pnum
data modify storage game_data hacker_r_tag prepend value {id:-1}
execute store result storage game_data hacker_r_tag[0].id int 1 run scoreboard players get @s pnum
data modify storage game_data hacker_q_tag prepend value {id:-1}
execute store result storage game_data hacker_q_tag[0].id int 1 run scoreboard players get @s pnum
data modify storage game_data wok_bow_tag prepend value {id:-1}
execute store result storage game_data wok_bow_tag[0].id int 1 run scoreboard players get @s pnum


scoreboard players operation @s game_id = Global game_id


tag @s remove queue
tag @s remove lobby
tag @s add game