# as rocket, wokkaman has tag temp, t_pnum global has pnum
$execute at @s run tp @s ~ ~ ~ $(angle) 0

#calculate height
execute at @a[tag=temp] run summon marker ~ ~ ~ {Tags:["fuck"]}
$execute as @e[type=marker,tag=fuck] at @s rotated $(delta_angle) 0 rotated ~90 0 positioned ^ ^ ^$(roll_angle) run tp @s ~ ~ ~ ~ ~
execute store result score t_marker_z global run data get entity @e[type=marker,tag=fuck,limit=1] Pos[2] 1000
execute store result score t_player_z global run data get entity @a[tag=temp,limit=1] Pos[2] 1000
execute store result score t_old_y global run data get entity @s Pos[1] 1000
# calculate delta z (t_marker_z holds delta z after) (this is basically sine or cosine of the angle, not sure, times $(roll_angle))
scoreboard players operation t_marker_z global -= t_player_z global
# add delta z to old y (t_marker_z holds value after)
scoreboard players operation t_marker_z global += t_old_y global
# set new y value
execute store result entity @s Pos[1] double 0.001 run scoreboard players get t_marker_z global

execute at @s run tp @s ^ ^ ^1.5
execute at @s rotated ~ -90 run tp @s ~ ~ ~ ~ ~
#execute if score t_is_grounded global matches 1 at @s run particle dust{color:[0.4,0.4,0.4],scale:0.6} ^ ^ ^-0.3 0 0 0 0 1 force
#execute unless score t_is_grounded global matches 1 at @s run particle small_flame ^ ^ ^-0.3 0 0 0 0 1 force
execute at @s run particle minecraft:dust_color_transition{from_color:[1.0,0.8,0.3],scale:0.4,to_color:[0.5,0.0,0.0]} ^ ^ ^-0.3 0 0 0 0.01 1 force

kill @e[type=marker,tag=fuck]
scoreboard players reset t_marker_z global
scoreboard players reset t_player_z global
scoreboard players reset t_old_y global
