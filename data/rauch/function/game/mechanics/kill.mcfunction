#called when a player kills another. @s is killer players have t_killer and t_killed tags (Gets cleared automatically after)

# say @s killed @a[tag=t_killed]
tellraw @a[tag=!lobby] [{"selector":"@a[tag=t_killed]"},{"text":" was killed by ","color":"white"},{"selector":"@s"}]

# kill rewards
execute if score Global game_running matches 1.. if score Global mode matches 5 run function rauch:game/mode/wokkaman/kill
execute as @s[tag=game,scores={kit=9}] run function rauch:game/ability/wokkaman/kill_reward
