scoreboard players set Global capture_info 1
title @a[tag=game] title ""
title @a[tag=game] subtitle {"text":"Red has Control","color":"red"}
execute as @a[tag=game] at @s run playsound minecraft:entity.arrow.hit_player master @s
