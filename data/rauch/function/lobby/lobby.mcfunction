#team join Lobby @s[team=!Lobby,tag=!queue,tag=lobby]

# give items
execute as @s[tag=!queue] run function rauch:lobby/ui/item_lobby_check
execute as @s[tag=queue] run function rauch:lobby/ui/item_queue_check
execute as @s[tag=admin] run function rauch:lobby/ui/item_admin_check

# player did some stuff
execute as @s[scores={click=1..}] run function rauch:lobby/lobby_click
execute as @s[scores={kitselect=1..}] run function rauch:lobby/kitselect
execute as @s[scores={adminsetting=1..}] run function rauch:lobby/settings
scoreboard players enable @s[tag=admin] adminsetting
scoreboard players enable @s kitselect

# no damage, no hunger
effect give @s minecraft:saturation 1 1 true
effect give @s minecraft:resistance 1 4 true
effect give @s[scores={health=..20}] minecraft:instant_health 1 10 true

# when not in queue display selected kit
title @s[scores={kit=1},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Bolt","color":"yellow"}]
title @s[scores={kit=2},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Zarzahn","color":"yellow"}]
title @s[scores={kit=3},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Raucher","color":"yellow"}]
title @s[scores={kit=4},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Hacker","color":"yellow"}]
title @s[scores={kit=5},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Wark","color":"yellow"}]
title @s[scores={kit=6},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Teleporter","color":"yellow"}]
title @s[scores={kit=7},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Tank","color":"yellow"}]
title @s[scores={kit=8},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Pikka","color":"yellow"}]
title @s[scores={kit=9},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Wokkaman... lol","color":"yellow"}]

# when in queue display other players in queue
title @s[tag=queue] actionbar [{"text":"Queue: ","color":"yellow"},{"selector":"@a[tag=queue]"}]
#title @s[tag=queue] actionbar [{"text":"Waiting for players... ","color":"yellow"}]
#execute unless entity @a[tag=queue,team=Red] run title @s[tag=queue] actionbar [{"text":"Queue: ","color":"yellow"},{"selector":"@a[tag=queue,team=Red]"},{"text":", ","color":"gray"},{"selector":"@a[tag=queue,team=Blue]"},{"text":", ","color":"gray"},{"selector":"@a[tag=queue,team=Random]"}]

execute if score Global enable_launchpads matches 1 run function rauch:game/mechanics/launchpads/check_for_launchpads
