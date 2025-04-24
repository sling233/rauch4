scoreboard players set 20 temp 20
scoreboard players set 1200 const 1200

scoreboard players operation t_min temp = Global wok_time
scoreboard players operation t_sec temp = t_min temp
scoreboard players operation t_min temp /= 1200 const
scoreboard players operation t_sec temp %= 1200 const
scoreboard players operation t_sec temp /= 20 const
execute if score t_sec temp matches ..9 run scoreboard players set t_extra_0 temp 0

bossbar set wokkaman_health name [{"text":"Kills: ","color":"yellow"},{"score":{"name":"Global","objective":"wok_kills"},"color":"green"},{"text":"    Wokkaman    ","color":"red"},{"text":"Time: ","color":"yellow"},{"score":{"name":"t_min","objective":"temp"},"color":"green"},{"text":":","color":"gray"},{"score":{"name":"t_extra_0","objective":"temp"},"color":"green"},{"score":{"name":"t_sec","objective":"temp"},"color":"green"}]


scoreboard players reset t_min temp
scoreboard players reset t_sec temp
scoreboard players reset t_extra_0 temp
