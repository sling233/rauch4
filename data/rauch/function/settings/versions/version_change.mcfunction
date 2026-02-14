execute store result score latest_version temp run function rauch:settings/versions/get_version

scoreboard players operation t_version temp = Global version
# outputs name of version in score t_version temp into storage rauch temp.version_name
function rauch:settings/versions/version_name
data modify storage rauch temp.from_version set from storage rauch temp.version_name

scoreboard players operation t_version temp = latest_version temp
# outputs name of version in score t_version temp into storage rauch temp.version_name
function rauch:settings/versions/version_name
data modify storage rauch temp.to_version set from storage rauch temp.version_name

scoreboard players reset t_version temp

# version changed:
tellraw @a [{"text":"------ Data Pack Version Changed ------","color":"green"}]
# abort game if a game is running
execute if score Global game_running matches 1 run tellraw @a [{"text":"Stopped ongoing game","color":"yellow"}]
execute if score Global game_running matches 1 run function rauch:game/framework/end_game

function rauch:settings/versions/print_version_change with storage rauch temp
data remove storage rauch temp

# update from old pack
execute unless score Global version matches 600.. run function rauch:settings/versions/v600
execute unless score Global version matches 601.. run function rauch:settings/versions/v601
execute unless score Global version matches 602.. run function rauch:settings/versions/v602
execute unless score Global version matches 603.. run function rauch:settings/versions/v603
execute unless score Global version matches 604.. run function rauch:settings/versions/v604
execute unless score Global version matches 605.. run function rauch:settings/versions/v605
execute unless score Global version matches 606.. run function rauch:settings/versions/v606
execute unless score Global version matches 607.. run function rauch:settings/versions/v607
execute unless score Global version matches 608.. run function rauch:settings/versions/v608
execute unless score Global version matches 609.. run function rauch:settings/versions/v609
execute unless score Global version matches 610.. run function rauch:settings/versions/v610
execute unless score Global version matches 611.. run function rauch:settings/versions/v611

# downpatch
execute if score Global version > latest_version temp run function rauch:settings/versions/downpatch

tellraw @a [{"text":"Checking if maps have updated:","color":"green"}]
function rauch:settings/versions/maps/map_check
tellraw @a [{"text":"Checking if the lobby has updated:","color":"green"}]
function rauch:settings/versions/lobby_check

tellraw @a [{"text":"------------------------------------","color":"green"}]
# potentially new kit selector etc
clear @a[tag=lobby]

scoreboard players reset latest_version temp
