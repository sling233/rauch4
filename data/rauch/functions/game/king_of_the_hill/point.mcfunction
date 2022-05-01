execute as @a[team=Red,tag=!dead,distance=..4] unless entity @a[team=Blue,tag=!dead,distance=..4] if score Global center_blue matches 1.. run scoreboard players remove Global center_blue 1
execute as @a[team=Red,tag=!dead,distance=..4] unless entity @a[team=Blue,tag=!dead,distance=..4] unless score Global center_blue matches 1.. if score Global center_red matches ..100 run scoreboard players add Global center_red 1

execute as @a[team=Blue,tag=!dead,distance=..4] unless entity @a[team=Red,tag=!dead,distance=..4] if score Global center_red matches 1.. run scoreboard players remove Global center_red 1
execute as @a[team=Blue,tag=!dead,distance=..4] unless entity @a[team=Red,tag=!dead,distance=..4] unless score Global center_red matches 1.. if score Global center_blue matches ..100 run scoreboard players add Global center_blue 1


execute if entity @a[team=Red,tag=!dead,distance=..4] unless entity @a[team=Blue,tag=!dead,distance=..4] if score Global center_red matches 1..99 run scoreboard players set Global capture_info 1
execute if entity @a[team=Blue,tag=!dead,distance=..4] unless entity @a[team=Red,tag=!dead,distance=..4] if score Global center_blue matches 1..99 run scoreboard players set Global capture_info 2

execute if score Global center_red matches 100.. run scoreboard players set Global capture_info 3
execute if score Global center_blue matches 100.. run scoreboard players set Global capture_info 4

execute if entity @a[team=Red,tag=!dead,distance=..4] if entity @a[team=Blue,tag=!dead,distance=..4] if score Global center_red matches 1.. run scoreboard players set Global capture_info 5
execute if entity @a[team=Red,tag=!dead,distance=..4] if entity @a[team=Blue,tag=!dead,distance=..4] if score Global center_blue matches 1.. run scoreboard players set Global capture_info 6

execute at @s positioned ~ ~-20 ~ run particle minecraft:dust 0.1 0.5 0.2 1 ^ ^0.1 ^4 0.1 0.1 0.1 1 1 force
execute at @s run tp @s ~ ~ ~ ~20 ~
