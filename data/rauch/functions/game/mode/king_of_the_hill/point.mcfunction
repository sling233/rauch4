#execute as @a[team=Red,tag=!dead,distance=..4] unless score Global control matches ..0 run scoreboard players remove Global control 1
#execute as @a[team=Blue,tag=!dead,distance=..4] unless score Global control matches 200.. run scoreboard players add Global control 1

execute as @a[tag=game,tag=!dead,distance=..4] run function rauch:game/mode/king_of_the_hill/score
