execute at @s run summon minecraft:item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},billboard:"fixed",Tags:["wok_rocket","rotating","setup"],item:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{}}},teleport_duration:2}
execute as @s[team=Red] run tag @e[type=item_display,tag=wok_rocket,tag=setup] add red
execute as @s[team=Blue] run tag @e[type=item_display,tag=wok_rocket,tag=setup] add blue

scoreboard players operation t_mod2 global = @s wokkaman_rocket_count
scoreboard players operation t_mod2 global %= 2 global
scoreboard players operation t_mod4 global = @s wokkaman_rocket_count
scoreboard players operation t_mod4 global %= 4 global
scoreboard players operation t_mod8 global = @s wokkaman_rocket_count
scoreboard players operation t_mod8 global %= 8 global
scoreboard players operation t_mod16 global = @s wokkaman_rocket_count
scoreboard players operation t_mod16 global %= 16 global

execute if score t_mod2 global matches 0 run tag @e[type=item_display,tag=wok_rocket,tag=setup] add clockwise
execute if score t_mod2 global matches 1 run tag @e[type=item_display,tag=wok_rocket,tag=setup] add clockwise
#execute if score t_mod2 global matches 1 run tag @e[type=item_display,tag=wok_rocket,tag=setup] add counter_clockwise

scoreboard players operation t_wokkaman_rocket_rotating_tilt global = @s wokkaman_rocket_count
scoreboard players operation t_wokkaman_rocket_rotating_tilt global += 4 global
scoreboard players operation t_wokkaman_rocket_rotating_tilt global /= 4 global
scoreboard players operation t_wokkaman_rocket_rotating_tilt global *= 35 global
execute if score t_mod4 global matches 1..2 run scoreboard players operation t_wokkaman_rocket_rotating_tilt global *= -1 global
scoreboard players operation @e[type=item_display,tag=wok_rocket,tag=setup] wokkaman_rocket_rotating_tilt = t_wokkaman_rocket_rotating_tilt global

execute if score t_mod2 global matches 1 run scoreboard players operation t_wokkaman_rocket_phase global += 90 global
execute if score t_mod4 global matches 2..3 run scoreboard players operation t_wokkaman_rocket_phase global += 180 global
execute if score t_mod8 global matches 4..7 run scoreboard players operation t_wokkaman_rocket_phase global += 45 global
execute if score t_mod16 global matches 8..15 run scoreboard players operation t_wokkaman_rocket_phase global += 23 global
scoreboard players operation @e[type=item_display,tag=wok_rocket,tag=setup] wokkaman_rocket_phase = t_wokkaman_rocket_phase global

scoreboard players operation @e[type=item_display,tag=wok_rocket,tag=setup,limit=1] pnum = @s pnum
tag @e[type=item_display,tag=wok_rocket,tag=setup] remove setup

scoreboard players reset t_mod2 global
scoreboard players reset t_mod4 global
scoreboard players reset t_mod8 global
scoreboard players reset t_wokkaman_rocket_phase global
scoreboard players reset t_wokkaman_rocket_rotating_tilt global

scoreboard players add @s wokkaman_rocket_count 1
