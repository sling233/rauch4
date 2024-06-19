execute as @s[tag=lobby,tag=!queue] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:7b}]}] run function rauch:lobby/ui/giveready
execute as @s[tag=lobby,tag=!queue] as @s[nbt=!{Inventory:[{id:"minecraft:written_book",Slot:8b}]}] run function rauch:lobby/ui/givekitselector
execute as @s[tag=lobby,tag=!queue] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run function rauch:lobby/ui/givespectate
execute as @s[tag=lobby,tag=!queue] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:5b}]}] run function rauch:lobby/ui/givetospawn

execute as @s[tag=lobby,tag=admin] as @s[nbt=!{Inventory:[{id:"minecraft:written_book",Slot:0b}]}] run function rauch:lobby/ui/giveadminbook
execute as @s[tag=lobby,tag=admin] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b}]}] run function rauch:lobby/ui/givestart1
#execute as @s[tag=lobby,tag=admin] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:2b}]}] run function rauch:lobby/ui/givestart2

execute as @s[tag=lobby,tag=queue] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b}]}] run function rauch:lobby/ui/givecancel
execute as @s[tag=lobby,tag=queue] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:7b}]}] run function rauch:lobby/ui/giveselectblue
execute as @s[tag=lobby,tag=queue] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:6b}]}] run function rauch:lobby/ui/giveselectred
execute as @s[tag=lobby,tag=queue] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:5b}]}] run function rauch:lobby/ui/giveselectrandom
execute as @s[tag=lobby,tag=queue] as @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:4b}]}] run function rauch:lobby/ui/givetospawn2


execute as @s[tag=lobby,scores={click=1..}] run function rauch:lobby/lobbymanager
execute as @s[tag=lobby,scores={kitselect=1..}] run function rauch:lobby/kitselect
execute as @s[tag=lobby,scores={adminsetting=1..}] run function rauch:lobby/settings

team join Lobby @s[team=!Lobby,tag=!queue,tag=lobby]
effect give @s minecraft:saturation 1 1 true
effect give @s minecraft:resistance 1 4 true
effect give @s[scores={health=..20}] minecraft:instant_health 1 10 true

title @s[scores={kit=1},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Bolt","color":"yellow"}]
title @s[scores={kit=2},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Zarzahn","color":"yellow"}]
title @s[scores={kit=3},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Raucher","color":"yellow"}]
title @s[scores={kit=4},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Hacker","color":"yellow"}]
title @s[scores={kit=5},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Wark","color":"yellow"}]
title @s[scores={kit=6},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Teleporter","color":"yellow"}]
title @s[scores={kit=7},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Tank","color":"yellow"}]
title @s[scores={kit=8},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Pikka","color":"yellow"}]
title @s[scores={kit=9},tag=!queue] actionbar [{"text":"Selected Kit: "},{"text":"Wokkaman... how?","color":"yellow"}]

#title @s[tag=queue] actionbar [{"text":"Waiting for players... ","color":"yellow"}]
#execute unless entity @a[tag=queue,team=Red] run title @s[tag=queue] actionbar [{"text":"Queue: ","color":"yellow"},{"selector":"@a[tag=queue,team=Red]"},{"text":", ","color":"gray"},{"selector":"@a[tag=queue,team=Blue]"},{"text":", ","color":"gray"},{"selector":"@a[tag=queue,team=Random]"}]
title @s[tag=queue] actionbar [{"text":"Queue: ","color":"yellow"},{"selector":"@a[tag=queue]"}]

scoreboard players enable @s[tag=admin] adminsetting
scoreboard players enable @s kitselect
scoreboard players reset @s click
