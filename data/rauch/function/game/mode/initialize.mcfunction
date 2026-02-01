execute if score Global mode matches 0 run return run function rauch:game/mode/deathmatch/initialize
execute if score Global mode matches 1 run return run function rauch:game/mode/king_of_the_hill/initialize
execute if score Global mode matches 2 run return run function rauch:game/mode/respawn_deathmatch/initialize
execute if score Global mode matches 3 run return run function rauch:game/mode/practice/initialize
execute if score Global mode matches 4 run return run function rauch:game/mode/capture_the_flag/initialize
execute if score Global mode matches 5 run return run function rauch:game/mode/wokkaman/initialize


tellraw @a [{text:"",color:"red"},"Error when trying to initialize mode, not implemented for mode id ",{"score":{"name":"Global","objective":"mode"}}]
