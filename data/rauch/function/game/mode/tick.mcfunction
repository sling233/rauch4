execute if score Global mode matches 0 run return run function rauch:game/mode/deathmatch/tick
execute if score Global mode matches 1 run return run function rauch:game/mode/king_of_the_hill/tick
execute if score Global mode matches 2 run return run function rauch:game/mode/respawn_deathmatch/tick
execute if score Global mode matches 3 run return 0
execute if score Global mode matches 4 run return run function rauch:game/mode/capture_the_flag/tick
execute if score Global mode matches 5 run return run function rauch:game/mode/wokkaman/tick
execute if score Global mode matches 6 run return 0


execute unless score Global mode matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to run tick function, mode id unset"]
scoreboard players operation err temp = Global mode
tellraw @a [{text:"",color:"red"},"Error when trying to run tick function, not implemented for mode id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp