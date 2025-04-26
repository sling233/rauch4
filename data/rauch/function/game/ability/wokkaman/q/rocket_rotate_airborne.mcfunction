# as rocket, wokkaman has tag temp, t_pnum temp has pnum
#$execute at @a[tag=temp,limit=1] run tp @s ~ ~1.6 ~ $(angle) 0
#execute at @s run tp @s ^ ^ ^1


#calculate stuff idk yet
scoreboard players set 2 const 2
execute at @a[tag=temp,limit=1] run summon marker ~ ~ ~ {Tags:["fuck"]}
$execute as @e[type=marker,tag=fuck] at @s rotated $(delta_angle) 0 rotated ~-90 ~ positioned ^ ^ ^1.6 run tp @s ~ ~ ~ ~ ~
execute store result score t_delta_x temp run data get entity @e[type=marker,tag=fuck,limit=1] Pos[0] 1000
execute store result score t_delta_z temp run data get entity @e[type=marker,tag=fuck,limit=1] Pos[2] 1000
# calculate deltas
scoreboard players operation t_delta_x temp -= t_player_x temp
scoreboard players operation t_delta_z temp -= t_player_z temp
# sneak distance reduction:
execute if score t_is_sneaking temp matches 1 run scoreboard players operation t_delta_x temp /= 2 const
execute if score t_is_sneaking temp matches 1 run scoreboard players operation t_delta_z temp /= 2 const

execute store result storage temp delta_x float 0.001 run scoreboard players get t_delta_x temp
execute store result storage temp delta_z float 0.001 run scoreboard players get t_delta_z temp

function rauch:game/ability/wokkaman/q/rocket_rotate_airborne_macro with storage temp


execute at @s run particle minecraft:dust_color_transition{from_color:[1.0,0.8,0.3],scale:0.4,to_color:[0.5,0.0,0.0]} ^ ^ ^-0.3 0 0 0 0.01 1 force
execute at @s run particle minecraft:small_flame ^ ^ ^-0.3 0.1 0.1 0.1 0.01 1 force

scoreboard players reset t_delta_x temp
scoreboard players reset t_delta_z temp
kill @e[type=marker,tag=fuck]
