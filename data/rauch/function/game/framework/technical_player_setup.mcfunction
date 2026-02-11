# set pnum
scoreboard players add Global pnum 1
scoreboard players operation @s pnum = Global pnum

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

# bossbars
function rauch:game/ui/bossbar/setplayers
function rauch:game/ui/bossbar/allinvisible

# inventory
clear @s
# recipe take @s *
#advancement revoke @s everything
item replace entity @s saddle with minecraft:heavy_core[equippable={slot:"saddle",equip_sound:"intentionally_empty"}]
scoreboard players set @s armor_target 80
function rauch:game/mechanics/set_protection

gamemode adventure @s

# scores
scoreboard players reset @s leave
scoreboard players reset @s death
scoreboard players reset @s dropcoas
scoreboard players reset @s click
scoreboard players reset @s click_warped