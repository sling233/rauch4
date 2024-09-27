# change version (downpatch and version_check has to be updated as well)
scoreboard players set this_version temp 606
# version changed:
tellraw @a [{"text":"------ Data Pack Version Changed ------","color":"green"}]
# abort game if a game is running
execute if score Global game_running matches 1 run tellraw @a [{"text":"Stopped ongoing game","color":"yellow"}]
execute if score Global game_running matches 1 run function rauch:game/framework/end_game

# update from old pack
execute unless score Global version matches 600.. run function rauch:settings/versions/v600
execute unless score Global version matches 601.. run function rauch:settings/versions/v601
execute unless score Global version matches 602.. run function rauch:settings/versions/v602
execute unless score Global version matches 603.. run function rauch:settings/versions/v603
execute unless score Global version matches 604.. run function rauch:settings/versions/v604
execute unless score Global version matches 605.. run function rauch:settings/versions/v605
execute unless score Global version matches 606.. run function rauch:settings/versions/v606

# downpatch
execute if score Global version > this_version temp run function rauch:settings/versions/downpatch
# REMINDER: when changing version this function need to be updated too ^

tellraw @a [{"text":"------------------------------------","color":"green"}]
# potentially new kit selector etc
clear @a[tag=lobby]

scoreboard players reset this_version temp
