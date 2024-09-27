#as hit player, storage macros data has hacker_q_list data
data modify storage macros data.list prepend value -1
execute store result storage macros data.list[0] int 1 run scoreboard players get @s pnum
