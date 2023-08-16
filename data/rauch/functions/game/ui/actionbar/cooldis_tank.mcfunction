scoreboard objectives add t_damage_s dummy
scoreboard objectives add t_damage_ds dummy
scoreboard players operation @s t_damage_s = @s tank_damage_taken
scoreboard players operation @s t_damage_s /= Global 20
scoreboard players operation @s t_damage_ds = @s tank_damage_taken
scoreboard players operation @s t_damage_ds %= Global 20
scoreboard players operation @s t_damage_ds /= Global 2

execute as @s[scores={cool2=0,cool3=0,tank_damage_taken=40..}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"dark_purple"},{"score":{"name":"@s","objective":"cool2_s"},"color":"dark_purple"},{"text":".","color":"dark_purple"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"dark_purple"},{"text":"]  ","color":"dark_purple"},{"text":"F [","color":"dark_green"},{"score":{"name":"@s","objective":"cool3_s"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"dark_green"},{"text":"]  ","color":"dark_green"},{"text":"R [","color":"gold"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"gold"},{"text":"❤]","color":"gold"}]
execute as @s[scores={cool2=0,cool3=0,tank_damage_taken=..39}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"dark_purple"},{"score":{"name":"@s","objective":"cool2_s"},"color":"dark_purple"},{"text":".","color":"dark_purple"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"dark_purple"},{"text":"]  ","color":"dark_purple"},{"text":"F [","color":"dark_green"},{"score":{"name":"@s","objective":"cool3_s"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"dark_green"},{"text":"]  ","color":"dark_green"},{"text":"R [","color":"yellow"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"yellow"},{"text":"❤]","color":"yellow"}]
execute as @s[scores={cool2=0,cool3=1..,tank_damage_taken=40..}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"dark_purple"},{"score":{"name":"@s","objective":"cool2_s"},"color":"dark_purple"},{"text":".","color":"dark_purple"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"dark_purple"},{"text":"]  ","color":"dark_purple"},{"text":"F [","color":"green"},{"score":{"name":"@s","objective":"cool3_s"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"green"},{"text":"]  ","color":"green"},{"text":"R [","color":"gold"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"gold"},{"text":"❤]","color":"gold"}]
execute as @s[scores={cool2=0,cool3=1..,tank_damage_taken=..39}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"dark_purple"},{"score":{"name":"@s","objective":"cool2_s"},"color":"dark_purple"},{"text":".","color":"dark_purple"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"dark_purple"},{"text":"]  ","color":"dark_purple"},{"text":"F [","color":"green"},{"score":{"name":"@s","objective":"cool3_s"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"green"},{"text":"]  ","color":"green"},{"text":"R [","color":"yellow"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"yellow"},{"text":"❤]","color":"yellow"}]
execute as @s[scores={cool2=1..,cool3=0,tank_damage_taken=40..}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"light_purple"},{"score":{"name":"@s","objective":"cool2_s"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"light_purple"},{"text":"]  ","color":"light_purple"},{"text":"F [","color":"dark_green"},{"score":{"name":"@s","objective":"cool3_s"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"dark_green"},{"text":"]  ","color":"dark_green"},{"text":"R [","color":"gold"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"gold"},{"text":"❤]","color":"gold"}]
execute as @s[scores={cool2=1..,cool3=0,tank_damage_taken=..39}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"light_purple"},{"score":{"name":"@s","objective":"cool2_s"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"light_purple"},{"text":"]  ","color":"light_purple"},{"text":"F [","color":"dark_green"},{"score":{"name":"@s","objective":"cool3_s"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"dark_green"},{"text":"]  ","color":"dark_green"},{"text":"R [","color":"yellow"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"yellow"},{"text":"❤]","color":"yellow"}]
execute as @s[scores={cool2=1..,cool3=1..,tank_damage_taken=40..}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"light_purple"},{"score":{"name":"@s","objective":"cool2_s"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"light_purple"},{"text":"]  ","color":"light_purple"},{"text":"F [","color":"green"},{"score":{"name":"@s","objective":"cool3_s"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"green"},{"text":"]  ","color":"green"},{"text":"R [","color":"gold"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"gold"},{"text":"❤]","color":"gold"}]
execute as @s[scores={cool2=1..,cool3=1..,tank_damage_taken=..39}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"light_purple"},{"score":{"name":"@s","objective":"cool2_s"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"light_purple"},{"text":"]  ","color":"light_purple"},{"text":"F [","color":"green"},{"score":{"name":"@s","objective":"cool3_s"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"green"},{"text":"]  ","color":"green"},{"text":"R [","color":"yellow"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"yellow"},{"text":"❤]","color":"yellow"}]

execute if predicate rauch:hack unless predicate rauch:stun run title @s actionbar [{"text":"Q [","color":"red"},{"score":{"name":"@s","objective":"cool2_s"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"red"},{"text":"]  ","color":"red"},{"text":"F [","color":"red"},{"score":{"name":"@s","objective":"cool3_s"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"red"},{"text":"]  ","color":"red"},{"text":"R [","color":"red"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"red"},{"text":"❤]","color":"red"}]
execute if predicate rauch:stun run title @s actionbar [{"text":"Q [","color":"gray"},{"score":{"name":"@s","objective":"cool2_s"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"cool2_ds"},"color":"gray"},{"text":"]  ","color":"gray"},{"text":"F [","color":"gray"},{"score":{"name":"@s","objective":"cool3_s"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"cool3_ds"},"color":"gray"},{"text":"]  ","color":"gray"},{"text":"R [","color":"gray"},{"score":{"name":"@s","objective":"t_damage_s"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"@s","objective":"t_damage_ds"},"color":"gray"},{"text":"❤]","color":"gray"}]

scoreboard objectives remove t_damage_s
scoreboard objectives remove t_damage_ds
