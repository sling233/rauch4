# gets called once during at the end of framework/player_setup game start. This is BEFORE kits/post_setup
# this is so it can be safely used to change player stats, cooldown etc
# EXECUTED AS A PLAYER
execute unless entity @s[type=player] run return run \
    tellraw @a [{text:"",color:"red",text:"Error when trying to apply game player_setup, not executed as a player."}]

execute if score Global mode matches 0 run return run function rauch:game/mode/deathmatch/player_setup
execute if score Global mode matches 1 run return run function rauch:game/mode/king_of_the_hill/player_setup
execute if score Global mode matches 2 run return run function rauch:game/mode/respawn_deathmatch/player_setup
execute if score Global mode matches 3 run return run function rauch:game/mode/practice/player_setup
execute if score Global mode matches 4 run return run function rauch:game/mode/capture_the_flag/player_setup
execute if score Global mode matches 5 run return run function rauch:game/mode/wokkaman/player_setup
execute if score Global mode matches 6 run return run function rauch:game/mode/try/player_setup
execute if score Global mode matches 7 run return run function rauch:game/mode/spawn_check/player_setup


execute unless score Global mode matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to apply game player_setup, mode id unset"]
scoreboard players operation err temp = Global mode
tellraw @a [{text:"",color:"red"},"Error when trying to apply game player_setup, not implemented for mode id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp
