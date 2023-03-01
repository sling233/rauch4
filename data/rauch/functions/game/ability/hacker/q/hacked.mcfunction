# hacker has tag t_hacker
scoreboard players set @s hack 160
scoreboard players set @a[tag=t_hacker] hack_tag_timer 160
function rauch:game/mechanics/hackinit

# cycles through hacker_q_tag until hackers data is in front
execute as @a[tag=t_hacker] run function rauch:game/ability/hacker/q/array/find_me

# check if player was already tagged (if yes found is set to 1)
scoreboard objectives add found dummy
function rauch:game/ability/hacker/q/array/find_pnum_check
execute unless score Global found matches 1 run data modify storage game_data hacker_q_tag[0].list prepend value -1
execute unless score Global found matches 1 run execute store result storage game_data hacker_q_tag[0].list[0] int 1 run scoreboard players get @s pnum
scoreboard objectives remove found
