execute store result score Global xPos run data get entity @s Pos[0]
execute as @s[team=Red] store result score Global yPos run data get entity @e[type=minecraft:armor_stand,tag=map,tag=active,tag=t2,limit=1] Pos[0]
execute as @s[team=Blue] store result score Global yPos run data get entity @e[type=minecraft:armor_stand,tag=map,tag=active,tag=t1,limit=1] Pos[0]
scoreboard players operation Global xPos -= Global yPos

execute store result score Global zPos run data get entity @s Pos[2]
execute as @s[team=Red] store result score Global yPos run data get entity @e[type=minecraft:armor_stand,tag=map,tag=active,tag=t2,limit=1] Pos[2]
execute as @s[team=Blue] store result score Global yPos run data get entity @e[type=minecraft:armor_stand,tag=map,tag=active,tag=t1,limit=1] Pos[2]
scoreboard players operation Global zPos -= Global yPos

scoreboard players operation Global xPos *= Global xPos
scoreboard players operation Global zPos *= Global zPos

scoreboard players operation Global xPos += Global zPos

execute as @s[team=Red] run scoreboard players operation Global flagDistanceRed = Global xPos
execute as @s[team=Blue] run scoreboard players operation Global flagDistanceBlue = Global xPos

scoreboard players set @s hack 200
