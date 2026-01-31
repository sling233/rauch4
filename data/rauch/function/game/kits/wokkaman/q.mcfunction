execute unless score @s wokkaman_rocket_count matches 4.. run return 1

tag @s add wokkaman_q_shooting
scoreboard players reset @s wokkaman_shoot_cooldown
scoreboard players set t_wokkaman_rocket_shooting_count temp 0

scoreboard players operation t_pnum temp = @s pnum
# prevents new rockets from shooting when the wokkaman gets a kill for example
execute as @e[type=item_display,tag=wok_rocket,tag=rotating] if score @s pnum = t_pnum temp run function rauch:game/kits/wokkaman/q/tag_rocket_for_shooting
scoreboard players reset t_pnum temp

scoreboard players operation @s wokkaman_rocket_shooting_count = t_wokkaman_rocket_shooting_count temp
scoreboard players reset t_wokkaman_rocket_shooting_count temp
