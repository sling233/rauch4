scoreboard players set Global capture_info 6
title @a[tag=game] title {"text":"Red Overtime","color":"red"}
title @a[tag=game,team=Red] subtitle {"text":"Keep Control!","color":"gray"}
title @a[tag=game,team=Blue] subtitle {"text":"Gain Control to win","color":"gray"}
execute as @a[tag=game] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.6 1.6
