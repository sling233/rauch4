# create game data storage
data remove storage game_data bolt_hit
data remove storage game_data hacker_r_tag
data remove storage game_data hacker_q_tag

# player ids und setup und so
scoreboard players reset Global pnum
execute as @a[tag=queue,limit=12] run function rauch:game/framework/teamsetup
scoreboard players reset Global pnum

#mapgedöns
summon armor_stand ~ ~100 ~ {Invulnerable:1b,Invisible:1b,NoGravity:1b,Tags:["active","map","t1"]}
summon armor_stand ~ ~100 ~ {Invulnerable:1b,Invisible:1b,NoGravity:1b,Tags:["active","map","t2"]}
summon armor_stand ~ ~100 ~ {Invulnerable:1b,Invisible:1b,NoGravity:1b,Tags:["active","map","ce"]}
execute as @e[type=armor_stand,tag=map,tag=active] run function rauch:game/framework/mapsetup
scoreboard players operation Global mapParticle = @e[type=armor_stand,tag=map,tag=root,tag=active] mapParticle
execute if score @e[type=armor_stand,tag=map,tag=root,tag=active,limit=1] mapTime matches 1 run time set day
execute if score @e[type=armor_stand,tag=map,tag=root,tag=active,limit=1] mapTime matches 2 run time set noon
execute if score @e[type=armor_stand,tag=map,tag=root,tag=active,limit=1] mapTime matches 3 run time set night
execute if score @e[type=armor_stand,tag=map,tag=root,tag=active,limit=1] mapTime matches 4 run time set midnight


function rauch:game/ui/bossbar/setplayers
function rauch:game/ui/bossbar/allinvisible
#condition functions
function rauch:game/framework/default_conditions
execute if score Global mode matches 0 run function rauch:game/mode/deathmatch/conditions
execute if score Global mode matches 1 run function rauch:game/mode/king_of_the_hill/conditions
execute if score Global mode matches 2 run function rauch:game/mode/respawn_deathmatch/conditions
execute if score Global mode matches 3 run function rauch:game/mode/practice/conditions
execute if score Global mode matches 4 run function rauch:game/mode/capture_the_flag/conditions

function rauch:game/ui/bossbar/elytra/set_max
