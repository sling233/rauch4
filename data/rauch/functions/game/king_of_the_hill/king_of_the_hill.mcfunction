#execute as @a[scores={death=1..}] run function rauch:game/king_of_the_hill/die
#execute as @a[scores={respawntimer=120}] run function rauch:game/king_of_the_hill/respawn
function rauch:game/add/respawn/respawn_main
execute at @e[type=armor_stand,tag=c] positioned ~ ~-20 ~ run function rauch:game/king_of_the_hill/point

execute if score Global center_red matches 300.. run scoreboard players remove Global time_red 1
execute if score Global center_blue matches 300.. run scoreboard players remove Global time_blue 1

scoreboard players operation Red: time_times = Global time_red
scoreboard players operation Blue: time_times = Global time_blue

scoreboard players operation Red: time_times /= Global 20
scoreboard players operation Blue: time_times /= Global 20

execute if score Global time_red matches ..0 run function rauch:game/core/framework/win_red
execute if score Global time_blue matches ..0 run function rauch:game/core/framework/win_blue
