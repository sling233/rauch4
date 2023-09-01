scoreboard objectives add t_red_points_display dummy
scoreboard objectives add t_blue_points_display dummy
scoreboard objectives add 1000 dummy
scoreboard players set Global 1000 1000

scoreboard players operation Global t_red_points_display = Global flag_min_distance_blue
scoreboard players operation Global t_red_points_display /= Global 1000
scoreboard players operation Global t_blue_points_display = Global flag_min_distance_red
scoreboard players operation Global t_blue_points_display /= Global 1000


scoreboard objectives add t_min dummy
scoreboard objectives add t_sec dummy
scoreboard objectives add extra_0 dummy
scoreboard objectives add 1200 dummy
scoreboard players set Global 1200 1200

scoreboard players operation Global t_min = Global ctf_time
scoreboard players operation Global t_sec = Global ctf_time
scoreboard players operation Global t_min /= Global 1200
scoreboard players operation Global t_sec %= Global 1200
scoreboard players operation Global t_sec /= Global 20
execute if score Global t_sec matches ..9 run scoreboard players set Global extra_0 0

bossbar set flag_location name [{"score":{"name":"Global","objective":"flag_points_blue"},"color":"blue"},{"text":"   "},{"score":{"name":"Global","objective":"t_blue_points_display"},"color":"aqua"},{"text":"            ","color":"yellow"},{"score":{"name":"Global","objective":"t_min"},"color":"yellow"},{"text":":","color":"yellow"},{"score":{"name":"Global","objective":"extra_0"},"color":"yellow"},{"score":{"name":"Global","objective":"t_sec"},"color":"yellow"},{"text":"            "},{"score":{"name":"Global","objective":"t_red_points_display"},"color":"#FFAA00"},{"text":"   "},{"score":{"name":"Global","objective":"flag_points_red"},"color":"red"}]


scoreboard objectives remove t_red_points_display
scoreboard objectives remove t_blue_points_display
scoreboard objectives remove 1000
scoreboard objectives remove t_min
scoreboard objectives remove t_sec
scoreboard objectives remove extra_0
scoreboard objectives remove 1200
