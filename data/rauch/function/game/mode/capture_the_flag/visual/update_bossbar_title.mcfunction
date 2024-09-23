scoreboard players set 20 const 20
scoreboard players set 1000 const 1000
scoreboard players set 1200 const 1200

scoreboard players operation t_red_points_display temp = Global flag_min_distance_blue
scoreboard players operation t_red_points_display temp /= 1000 const
scoreboard players operation t_blue_points_display temp = Global flag_min_distance_red
scoreboard players operation t_blue_points_display temp /= 1000 const

scoreboard players operation t_min temp = Global ctf_time
scoreboard players operation t_min temp += 20 const
scoreboard players operation t_sec temp = t_min temp
scoreboard players operation t_min temp /= 1200 const
scoreboard players operation t_sec temp %= 1200 const
scoreboard players operation t_sec temp /= 20 const
execute if score t_sec temp matches ..9 run scoreboard players set t_extra_0 temp 0

bossbar set flag_location name [{"score":{"name":"Global","objective":"flag_points_blue"},"color":"blue"},{"text":"   "},{"score":{"name":"t_blue_points_display","objective":"temp"},"color":"aqua"},{"text":"            ","color":"yellow"},{"score":{"name":"t_min","objective":"temp"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"t_extra_0","objective":"temp"},"color":"yellow"},{"score":{"name":"t_sec","objective":"temp"},"color":"yellow"},{"text":"            "},{"score":{"name":"t_red_points_display","objective":"temp"},"color":"#FFAA00"},{"text":"   "},{"score":{"name":"Global","objective":"flag_points_red"},"color":"red"}]


scoreboard players reset t_red_points_display temp
scoreboard players reset t_blue_points_display temp
scoreboard players reset t_min temp
scoreboard players reset t_sec temp
scoreboard players reset t_extra_0 temp
