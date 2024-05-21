scoreboard players set .2000 global 2000
scoreboard players operation #calc time_red = Global time_red
scoreboard players operation #calc time_blue = Global time_blue

scoreboard players operation #calc time_red /= .2000 global
scoreboard players operation #calc time_blue /= .2000 global
scoreboard players reset .2000 global

execute if score Global capture_info matches 1 run bossbar set center_control name [{"score":{"name":"#calc","objective":"time_blue"},"color":"blue"},{"text":"        ","color":"yellow"},{"text":"Red Advantage","color":"red"},{"text":"        "},{"score":{"name":"#calc","objective":"time_red"},"color":"red"}]
execute if score Global capture_info matches 2 run bossbar set center_control name [{"score":{"name":"#calc","objective":"time_blue"},"color":"blue"},{"text":"             ","color":"yellow"},{"text":"Neutral","color":"yellow"},{"text":"             "},{"score":{"name":"#calc","objective":"time_red"},"color":"red"}]
execute if score Global capture_info matches 3 run bossbar set center_control name [{"score":{"name":"#calc","objective":"time_blue"},"color":"blue"},{"text":"        ","color":"yellow"},{"text":"Blue Advantage","color":"blue"},{"text":"        "},{"score":{"name":"#calc","objective":"time_red"},"color":"red"}]
execute if score Global capture_info matches 4 run bossbar set center_control name [{"score":{"name":"#calc","objective":"time_blue"},"color":"blue"},{"text":"         ","color":"yellow"},{"text":"Red Overtime","color":"red"},{"text":"         "},{"score":{"name":"#calc","objective":"time_red"},"color":"red"}]
execute if score Global capture_info matches 5 run bossbar set center_control name [{"score":{"name":"#calc","objective":"time_blue"},"color":"blue"},{"text":"         ","color":"yellow"},{"text":"Blue Overtime","color":"blue"},{"text":"         "},{"score":{"name":"#calc","objective":"time_red"},"color":"red"}]
execute if score Global capture_info matches 6 run bossbar set center_control name [{"score":{"name":"#calc","objective":"time_blue"},"color":"blue"},{"text":"        ","color":"yellow"},{"text":"Neutral Overtime","color":"yellow"},{"text":"        "},{"score":{"name":"#calc","objective":"time_red"},"color":"red"}]

scoreboard players reset #calc time_red
scoreboard players reset #calc time_blue

execute store result bossbar center_control value run scoreboard players get Global control
