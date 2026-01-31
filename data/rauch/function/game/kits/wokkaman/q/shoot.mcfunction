execute at @s run playsound minecraft:entity.firework_rocket.launch
scoreboard players remove @s wokkaman_rocket_count 1
scoreboard players remove @s wokkaman_rocket_shooting_count 1
scoreboard players set t_shot_rocket temp 0
scoreboard players operation t_pnum temp = @s pnum
execute as @e[type=item_display,tag=wok_rocket,tag=to_be_shot] if score @s pnum = t_pnum temp run function rauch:game/kits/wokkaman/q/shoot_rocket
scoreboard players reset t_pnum temp

scoreboard players reset t_shot_rocket temp
