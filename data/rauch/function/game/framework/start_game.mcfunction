# check if there are players in queue
execute unless entity @a[tag=queue] run tellraw @s [{"text":"Game can\'t be started because there are no players in queue!","color":"red"}]
execute unless entity @a[tag=queue] run return 0

# game id etc
scoreboard players set Global game_running 1
scoreboard players add Global game_id 1

# create game data storage
data remove storage game_data bolt_hit
data remove storage game_data hacker_r_tag
data remove storage game_data hacker_q_tag
data remove storage game_data wok_bow_tag

# set wokkaman kit
execute if score Global mode matches 5 as @a[tag=queue,team=Red] run scoreboard players set @s kit 9
# player ids und setup und so
scoreboard players reset Global pnum
execute as @a[tag=queue,limit=12] run function rauch:game/framework/teamsetup
scoreboard players reset Global pnum
# potentially left over players
execute as @a[tag=queue] run function rauch:game/framework/leftover

#mapgedöns
summon marker ~ ~ ~ {Tags:["map","t1"]}
summon marker ~ ~ ~ {Tags:["map","t2"]}
summon marker ~ ~ ~ {Tags:["map","ce"]}
execute as @e[type=marker,tag=map] run function rauch:game/framework/mapsetup

execute store result score Global mapParticle run data get storage map_data active.particle
#scoreboard players operation Global mapParticle = @e[type=armor_stand,tag=map,tag=root,tag=active] mapParticle
scoreboard objectives add t_map_time dummy
execute store result score Global t_map_time run data get storage map_data active.time
execute if score Global t_map_time matches 1 run time set day
execute if score Global t_map_time matches 2 run time set noon
execute if score Global t_map_time matches 3 run time set night
execute if score Global t_map_time matches 4 run time set midnight
scoreboard objectives remove t_map_time

# bossbars
function rauch:game/ui/bossbar/setplayers
function rauch:game/ui/bossbar/allinvisible

#condition functions
function rauch:game/framework/default_conditions
execute if score Global mode matches 0 run function rauch:game/mode/deathmatch/conditions
execute if score Global mode matches 1 run function rauch:game/mode/king_of_the_hill/conditions
execute if score Global mode matches 2 run function rauch:game/mode/respawn_deathmatch/conditions
execute if score Global mode matches 3 run function rauch:game/mode/practice/conditions
execute if score Global mode matches 4 run function rauch:game/mode/capture_the_flag/conditions
execute if score Global mode matches 5 run function rauch:game/mode/wokkaman/conditions
function rauch:game_settings_override

execute if score Global mode matches 0 run function rauch:game/mode/deathmatch/initialize
execute if score Global mode matches 1 run function rauch:game/mode/king_of_the_hill/initialize
execute if score Global mode matches 2 run function rauch:game/mode/respawn_deathmatch/initialize
execute if score Global mode matches 3 run function rauch:game/mode/practice/initialize
execute if score Global mode matches 4 run function rauch:game/mode/capture_the_flag/initialize
execute if score Global mode matches 5 run function rauch:game/mode/wokkaman/initialize

# elytra bossbar after setup so max is properly set
function rauch:game/ui/bossbar/elytra/set_max