scoreboard players set Global capture_info 6
title @a[tag=game] title {"text":"Neutral Overtime","color":"yellow"}
title @a[tag=game] subtitle {"text":"Gain Control to win!","color":"gray"}

execute as @a[tag=game] at @s run playsound minecraft:entity.arrow.hit_player master @s
