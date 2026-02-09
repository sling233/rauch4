# called from player function

execute if score Global mode matches 0 run return 0
execute if score Global mode matches 1 run return 0
execute if score Global mode matches 2 run return 0
execute if score Global mode matches 3 run return run function rauch:game/mode/practice/tick_player
execute if score Global mode matches 4 run return run return 0
execute if score Global mode matches 5 run return run function rauch:game/mode/wokkaman/tick_player
execute if score Global mode matches 6 run return run function rauch:game/mode/try/tick_player


execute unless score Global mode matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to run tick_player function, mode id unset"]
scoreboard players operation err temp = Global mode
tellraw @a [{text:"",color:"red"},"Error when trying to run tick_player function, not implemented for mode id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp