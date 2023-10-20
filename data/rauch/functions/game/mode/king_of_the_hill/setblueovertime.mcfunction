scoreboard players set Global capture_info 5
title @a[tag=game] title {"text":"Blue Overtime","color":"blue"}
title @a[tag=game,team=Red] subtitle {"text":"Gain Control to win","color":"gray"}
title @a[tag=game,team=Blue] subtitle {"text":"Keep Control!","color":"gray"}

execute as @a[tag=game] at @s run playsound minecraft:entity.arrow.hit_player master @s
