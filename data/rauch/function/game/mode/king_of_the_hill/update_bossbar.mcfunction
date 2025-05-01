scoreboard players set 2000 const 2000
scoreboard players operation t_calc_time_red temp = Global time_red
scoreboard players operation t_calc_time_blue temp = Global time_blue

scoreboard players operation t_calc_time_red temp /= 2000 const
scoreboard players operation t_calc_time_blue temp /= 2000 const

execute if score Global capture_info matches 1 run bossbar set center_control name [{"score":{"name":"t_calc_time_blue","objective":"temp"},"color":"blue"},{"text":"        ","color":"yellow"},{"text":"Red Control","color":"red"},{"text":"        "},{"score":{"name":"t_calc_time_red","objective":"temp"},"color":"red"}]
execute if score Global capture_info matches 2 run bossbar set center_control name [{"score":{"name":"t_calc_time_blue","objective":"temp"},"color":"blue"},{"text":"             ","color":"yellow"},{"text":"Red Advantage","color":"red"},{"text":"             "},{"score":{"name":"t_calc_time_red","objective":"temp"},"color":"red"}]
execute if score Global capture_info matches 3 run bossbar set center_control name [{"score":{"name":"t_calc_time_blue","objective":"temp"},"color":"blue"},{"text":"        ","color":"yellow"},{"text":"Neutral","color":"yellow"},{"text":"        "},{"score":{"name":"t_calc_time_red","objective":"temp"},"color":"red"}]
execute if score Global capture_info matches 4 run bossbar set center_control name [{"score":{"name":"t_calc_time_blue","objective":"temp"},"color":"blue"},{"text":"         ","color":"yellow"},{"text":"Blue Advantage","color":"blue"},{"text":"         "},{"score":{"name":"t_calc_time_red","objective":"temp"},"color":"red"}]
execute if score Global capture_info matches 5 run bossbar set center_control name [{"score":{"name":"t_calc_time_blue","objective":"temp"},"color":"blue"},{"text":"         ","color":"yellow"},{"text":"Red Control","color":"blue"},{"text":"         "},{"score":{"name":"t_calc_time_red","objective":"temp"},"color":"red"}]
execute if score Global capture_info matches 6 run bossbar set center_control name [{"score":{"name":"t_calc_time_blue","objective":"temp"},"color":"blue"},{"text":"        ","color":"yellow"},{"text":"Red Overtime","color":"red"},{"text":"        "},{"score":{"name":"t_calc_time_red","objective":"temp"},"color":"red"}]
execute if score Global capture_info matches 7 run bossbar set center_control name [{"score":{"name":"t_calc_time_blue","objective":"temp"},"color":"blue"},{"text":"        ","color":"yellow"},{"text":"Neutral Overtime","color":"yellow"},{"text":"        "},{"score":{"name":"t_calc_time_red","objective":"temp"},"color":"red"}]
execute if score Global capture_info matches 8 run bossbar set center_control name [{"score":{"name":"t_calc_time_blue","objective":"temp"},"color":"blue"},{"text":"        ","color":"yellow"},{"text":"Blue Overtime","color":"blue"},{"text":"        "},{"score":{"name":"t_calc_time_red","objective":"temp"},"color":"red"}]

execute store result bossbar center_control value run scoreboard players get Global control


scoreboard players reset t_calc_time_red temp
scoreboard players reset t_calc_time_blue temp
