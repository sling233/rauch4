function rauch:game/mode/wokkaman/bossbar/update
function rauch:game/mode/wokkaman/bossbar/update_title

execute unless score Global gamestart matches 1.. run scoreboard players add Global wok_time 1
# game end
execute if score Global gameend matches 1.. run return 0
execute unless entity @a[team=Red,tag=!dead] run function rauch:game/mode/wokkaman/win_blue
