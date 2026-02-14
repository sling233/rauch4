execute if score Global mode matches 0 run return run function rauch:game/framework/equal_team_setup
execute if score Global mode matches 1 run return run function rauch:game/framework/equal_team_setup
execute if score Global mode matches 2 run return run function rauch:game/framework/equal_team_setup
execute if score Global mode matches 3 run return run function rauch:game/framework/equal_team_setup
execute if score Global mode matches 4 run return run function rauch:game/framework/equal_team_setup
execute if score Global mode matches 5 run return run function rauch:game/mode/wokkaman/team_setup
execute if score Global mode matches 6 run return 0
execute if score Global mode matches 7 run return run team join Red @a[tag=game]


execute unless score Global mode matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to run team_setup function, mode id unset"]
scoreboard players operation err temp = Global mode
tellraw @a [{text:"",color:"red"},"Error when trying to run team_setup function, not implemented for mode id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp