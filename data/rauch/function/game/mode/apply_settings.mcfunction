execute if score Global mode matches 0 run return run function rauch:game/mode/deathmatch/settings
execute if score Global mode matches 1 run return run function rauch:game/mode/king_of_the_hill/settings
execute if score Global mode matches 2 run return run function rauch:game/mode/respawn_deathmatch/settings
execute if score Global mode matches 3 run return run function rauch:game/mode/practice/settings
execute if score Global mode matches 4 run return run function rauch:game/mode/capture_the_flag/settings
execute if score Global mode matches 5 run return run function rauch:game/mode/wokkaman/settings
execute if score Global mode matches 6 run return run return fail


execute unless score Global mode matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to apply game settings, mode id unset"]
scoreboard players operation err temp = Global mode
tellraw @a [{text:"",color:"red"},"Error when trying to apply game settings, not implemented for mode id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp
