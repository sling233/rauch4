data modify entity @s Owner set from entity @p UUID

execute store result score @s xPos run data get entity @s Pos[0] 1000000
execute store result score @s yPos run data get entity @s Pos[1] 1000000
execute store result score @s zPos run data get entity @s Pos[2] 1000000

execute as @e[type=area_effect_cloud,tag=vector,limit=1] store result score @s xPos run data get entity @s Pos[0] 1000000
execute as @e[type=area_effect_cloud,tag=vector,limit=1] store result score @s yPos run data get entity @s Pos[1] 1000000
execute as @e[type=area_effect_cloud,tag=vector,limit=1] store result score @s zPos run data get entity @s Pos[2] 1000000

execute run scoreboard players operation @s xPos -= @e[type=area_effect_cloud,tag=vector,limit=1] xPos
execute run scoreboard players operation @s yPos -= @e[type=area_effect_cloud,tag=vector,limit=1] yPos
execute run scoreboard players operation @s zPos -= @e[type=area_effect_cloud,tag=vector,limit=1] zPos

execute store result entity @s Motion[0] double 0.0000005 run scoreboard players get @s xPos
execute store result entity @s Motion[1] double 0.0000005 run scoreboard players get @s yPos
execute store result entity @s Motion[2] double 0.0000005 run scoreboard players get @s zPos

tag @s remove setup
