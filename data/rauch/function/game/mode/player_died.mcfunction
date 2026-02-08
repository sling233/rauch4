execute if score Global mode matches 0 run return 0
execute if score Global mode matches 1 run return run function rauch:game/mode/king_of_the_hill/player_died
execute if score Global mode matches 2 run return run function rauch:game/mode/respawn_deathmatch/player_died
execute if score Global mode matches 3 run return run function rauch:game/mode/practice/player_died
execute if score Global mode matches 4 run return run function rauch:game/mode/capture_the_flag/player_died
execute if score Global mode matches 5 run return run function rauch:game/mode/wokkaman/player_died


execute unless score Global mode matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to run player_died function, mode id unset"]
scoreboard players operation err temp = Global mode
tellraw @a [{text:"",color:"red"},"Error when trying to run player_died function, not implemented for mode id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp