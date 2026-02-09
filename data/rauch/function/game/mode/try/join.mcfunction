# determine team
# removes all offline palyers from the teams while keeping the online players
tag @a[team=Red] add t_red
tag @a[team=Blue] add t_blu
team empty Red
team empty Blue
team join Red @a[tag=t_red]
team join Blue @a[tag=t_blu]
tag @a remove t_red
tag @a remove t_blu

# team setup
execute store result score Global time_red run team list Red
execute store result score Global time_blue run team list Blue
execute if score Global time_red <= Global time_blue run team join Red @s
execute if score Global time_red > Global time_blue run team join Blue @s

# set pnum
scoreboard players set try_pnum temp 0
function rauch:game/mode/try/find_pnum_loop
scoreboard players operation @s pnum = try_pnum temp
scoreboard players reset try_pnum temp


# set game data storage (replace if alread exists)
data modify storage temp id set value {id:-1}
execute store result storage temp id.id int 1 run scoreboard players get @s pnum

data remove storage macros data
function rauch:macros/data_get {storage:"bolt_hit"}
execute unless data storage macros data run data modify storage game_data bolt_hit prepend from storage temp id
execute if data storage macros data run function rauch:macros/data_write_from {storage:"bolt_hit",from:"temp id"}

data remove storage macros data
function rauch:macros/data_get {storage:"hacker_r_tag"}
execute unless data storage macros data run data modify storage game_data hacker_r_tag prepend from storage temp id
execute if data storage macros data run function rauch:macros/data_write_from {storage:"hacker_r_tag",from:"temp id"}

data remove storage macros data
function rauch:macros/data_get {storage:"hacker_q_tag"}
execute unless data storage macros data run data modify storage game_data hacker_q_tag prepend from storage temp id
execute if data storage macros data run function rauch:macros/data_write_from {storage:"hacker_q_tag",from:"temp id"}

data remove storage macros data
function rauch:macros/data_get {storage:"wok_bow_tag"}
execute unless data storage macros data run data modify storage game_data wok_bow_tag prepend from storage temp id
execute if data storage macros data run function rauch:macros/data_write_from {storage:"wok_bow_tag",from:"temp id"}

data remove storage macros data
data remove storage temp id

# set weapon, armor, setup scores etc
tag @s remove queue
tag @s remove lobby
tag @s add game
tag @s add can_respawn
function rauch:game/framework/pregame
function rauch:game/kits/set_cooldowns

# tp
execute if entity @s[team=Red] run data modify storage temp spawn_loc.x set from storage map_data active.red[0]
execute if entity @s[team=Red] run data modify storage temp spawn_loc.y set from storage map_data active.red[1]
execute if entity @s[team=Red] run data modify storage temp spawn_loc.z set from storage map_data active.red[2]
execute if entity @s[team=Blue] run data modify storage temp spawn_loc.x set from storage map_data active.blue[0]
execute if entity @s[team=Blue] run data modify storage temp spawn_loc.y set from storage map_data active.blue[1]
execute if entity @s[team=Blue] run data modify storage temp spawn_loc.z set from storage map_data active.blue[2]

function rauch:settings/edit_map/tp_macro with storage temp spawn_loc
execute at @s run spawnpoint @s ~ ~ ~
data remove storage temp spawn_loc

