scoreboard objectives add t_min dummy
scoreboard objectives add t_sec dummy
scoreboard objectives add extra_0 dummy
scoreboard objectives add 1200 dummy
scoreboard players set Global 1200 1200

scoreboard players operation Global t_min = Global wok_time
#scoreboard players operation Global t_min += Global 20
scoreboard players operation Global t_sec = Global t_min
scoreboard players operation Global t_min /= Global 1200
scoreboard players operation Global t_sec %= Global 1200
scoreboard players operation Global t_sec /= Global 20
execute if score Global t_sec matches ..9 run scoreboard players set Global extra_0 0

bossbar set wokkaman_health name [{"text":"Kills: ","color":"yellow"},{"score":{"name":"Global","objective":"wok_kills"},"color":"green"},{"text":"    Wokkaman    ","color":"red"},{"text":"Time: ","color":"yellow"},{"score":{"name":"Global","objective":"t_min"},"color":"green"},{"text":":","color":"gray"},{"score":{"name":"Global","objective":"extra_0"},"color":"green"},{"score":{"name":"Global","objective":"t_sec"},"color":"green"}]


scoreboard objectives remove t_min
scoreboard objectives remove t_sec
scoreboard objectives remove extra_0
scoreboard objectives remove 1200
