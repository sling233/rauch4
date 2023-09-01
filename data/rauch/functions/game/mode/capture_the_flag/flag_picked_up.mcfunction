# calculate distance
scoreboard objectives add xPos2 dummy
scoreboard objectives add zPos2 dummy
# x
execute store result score @s xPos run data get entity @s Pos[0] 1000
scoreboard players operation @s xPos2 = @s xPos
execute store result score Global xPos run data get entity @e[type=marker,tag=map,tag=t1,limit=1] Pos[0] 1000
execute store result score Global xPos2 run data get entity @e[type=marker,tag=map,tag=t2,limit=1] Pos[0] 1000
scoreboard players operation @s xPos -= Global xPos
scoreboard players operation @s xPos2 -= Global xPos2
# z
execute store result score @s zPos run data get entity @s Pos[2] 1000
scoreboard players operation @s zPos2 = @s zPos
execute store result score Global zPos run data get entity @e[type=marker,tag=map,tag=t1,limit=1] Pos[2] 1000
execute store result score Global zPos2 run data get entity @e[type=marker,tag=map,tag=t2,limit=1] Pos[2] 1000
scoreboard players operation @s zPos -= Global zPos
scoreboard players operation @s zPos2 -= Global zPos2

execute at @s run summon item_display ~ ~ ~ {UUID:[I;0,0,0,0]}

# calculate distance 1
execute store result storage temp distance.x float 0.001 run scoreboard players get @s xPos
execute store result storage temp distance.z float 0.001 run scoreboard players get @s zPos
function rauch:game/mode/capture_the_flag/get_distance_macro with storage temp distance
execute store result score Global flagDistanceRed run data get entity 0-0-0-0-0 transformation.scale[0] 1000

# calculate distance 2
execute store result storage temp distance.x float 0.001 run scoreboard players get @s xPos2
execute store result storage temp distance.z float 0.001 run scoreboard players get @s zPos2
function rauch:game/mode/capture_the_flag/get_distance_macro with storage temp distance
execute store result score Global flagDistanceBlue run data get entity 0-0-0-0-0 transformation.scale[0] 1000

kill 0-0-0-0-0
scoreboard objectives remove xPos2
scoreboard objectives remove zPos2

# save min distance
execute as @s[team=Blue] run scoreboard players operation Global flag_min_distance_red < Global flagDistanceRed
execute as @s[team=Red] run scoreboard players operation Global flag_min_distance_blue < Global flagDistanceBlue

# hack player
scoreboard players set @s hack 200
