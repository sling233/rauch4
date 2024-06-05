scoreboard players set %2 global 2
scoreboard players set %20 global 20
scoreboard players operation %cool1_s global = @s cool1
scoreboard players operation %cool1_ds global = @s cool1
scoreboard players operation %cool1_s global /= %20 global
scoreboard players operation %cool1_ds global %= %20 global
scoreboard players operation %cool1_ds global /= %2 global

scoreboard players operation %cool2_s global = @s cool2
scoreboard players operation %cool2_ds global = @s cool2
scoreboard players operation %cool2_s global /= %20 global
scoreboard players operation %cool2_ds global %= %20 global
scoreboard players operation %cool2_ds global /= %2 global

scoreboard players operation %cool3_s global = @s cool3
scoreboard players operation %cool3_ds global = @s cool3
scoreboard players operation %cool3_s global /= %20 global
scoreboard players operation %cool3_ds global %= %20 global
scoreboard players operation %cool3_ds global /= %2 global
scoreboard players reset %20
scoreboard players reset %2


execute as @s[scores={cool2=0,cool3=0,cool1=0}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"dark_purple"},{"score":{"name":"%cool2_s","objective":"global"},"color":"dark_purple"},{"text":".","color":"dark_purple"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"dark_purple"},{"text":"]  ","color":"dark_purple"},{"text":"F [","color":"dark_green"},{"score":{"name":"%cool3_s","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"dark_green"},{"text":"]  ","color":"dark_green"},{"text":"R [","color":"gold"},{"score":{"name":"%cool1_s","objective":"global"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"gold"},{"text":"]","color":"gold"}]
execute as @s[scores={cool2=0,cool3=0,cool1=1..}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"dark_purple"},{"score":{"name":"%cool2_s","objective":"global"},"color":"dark_purple"},{"text":".","color":"dark_purple"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"dark_purple"},{"text":"]  ","color":"dark_purple"},{"text":"F [","color":"dark_green"},{"score":{"name":"%cool3_s","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"dark_green"},{"text":"]  ","color":"dark_green"},{"text":"R [","color":"yellow"},{"score":{"name":"%cool1_s","objective":"global"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"yellow"},{"text":"]","color":"yellow"}]
execute as @s[scores={cool2=0,cool3=1..,cool1=0}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"dark_purple"},{"score":{"name":"%cool2_s","objective":"global"},"color":"dark_purple"},{"text":".","color":"dark_purple"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"dark_purple"},{"text":"]  ","color":"dark_purple"},{"text":"F [","color":"green"},{"score":{"name":"%cool3_s","objective":"global"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"green"},{"text":"]  ","color":"green"},{"text":"R [","color":"gold"},{"score":{"name":"%cool1_s","objective":"global"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"gold"},{"text":"]","color":"gold"}]
execute as @s[scores={cool2=0,cool3=1..,cool1=1..}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"dark_purple"},{"score":{"name":"%cool2_s","objective":"global"},"color":"dark_purple"},{"text":".","color":"dark_purple"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"dark_purple"},{"text":"]  ","color":"dark_purple"},{"text":"F [","color":"green"},{"score":{"name":"%cool3_s","objective":"global"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"green"},{"text":"]  ","color":"green"},{"text":"R [","color":"yellow"},{"score":{"name":"%cool1_s","objective":"global"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"yellow"},{"text":"]","color":"yellow"}]
execute as @s[scores={cool2=1..,cool3=0,cool1=0}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"light_purple"},{"score":{"name":"%cool2_s","objective":"global"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"light_purple"},{"text":"]  ","color":"light_purple"},{"text":"F [","color":"dark_green"},{"score":{"name":"%cool3_s","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"dark_green"},{"text":"]  ","color":"dark_green"},{"text":"R [","color":"gold"},{"score":{"name":"%cool1_s","objective":"global"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"gold"},{"text":"]","color":"gold"}]
execute as @s[scores={cool2=1..,cool3=0,cool1=1..}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"light_purple"},{"score":{"name":"%cool2_s","objective":"global"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"light_purple"},{"text":"]  ","color":"light_purple"},{"text":"F [","color":"dark_green"},{"score":{"name":"%cool3_s","objective":"global"},"color":"dark_green"},{"text":".","color":"dark_green"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"dark_green"},{"text":"]  ","color":"dark_green"},{"text":"R [","color":"yellow"},{"score":{"name":"%cool1_s","objective":"global"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"yellow"},{"text":"]","color":"yellow"}]
execute as @s[scores={cool2=1..,cool3=1..,cool1=0}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"light_purple"},{"score":{"name":"%cool2_s","objective":"global"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"light_purple"},{"text":"]  ","color":"light_purple"},{"text":"F [","color":"green"},{"score":{"name":"%cool3_s","objective":"global"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"green"},{"text":"]  ","color":"green"},{"text":"R [","color":"gold"},{"score":{"name":"%cool1_s","objective":"global"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"gold"},{"text":"]","color":"gold"}]
execute as @s[scores={cool2=1..,cool3=1..,cool1=1..}] if predicate rauch:skill run title @s actionbar [{"text":"Q [","color":"light_purple"},{"score":{"name":"%cool2_s","objective":"global"},"color":"light_purple"},{"text":".","color":"light_purple"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"light_purple"},{"text":"]  ","color":"light_purple"},{"text":"F [","color":"green"},{"score":{"name":"%cool3_s","objective":"global"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"green"},{"text":"]  ","color":"green"},{"text":"R [","color":"yellow"},{"score":{"name":"%cool1_s","objective":"global"},"color":"yellow"},{"text":".","color":"yellow"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"yellow"},{"text":"]","color":"yellow"}]

execute if predicate rauch:hack unless predicate rauch:stun run title @s actionbar [{"text":"Q [","color":"red"},{"score":{"name":"%cool2_s","objective":"global"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"red"},{"text":"]  ","color":"red"},{"text":"F [","color":"red"},{"score":{"name":"%cool3_s","objective":"global"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"red"},{"text":"]  ","color":"red"},{"text":"R [","color":"red"},{"score":{"name":"%cool1_s","objective":"global"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"red"},{"text":"]","color":"red"}]
execute if predicate rauch:stun run title @s actionbar [{"text":"Q [","color":"gray"},{"score":{"name":"%cool2_s","objective":"global"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"%cool2_ds","objective":"global"},"color":"gray"},{"text":"]  ","color":"gray"},{"text":"F [","color":"gray"},{"score":{"name":"%cool3_s","objective":"global"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"%cool3_ds","objective":"global"},"color":"gray"},{"text":"]  ","color":"gray"},{"text":"R [","color":"gray"},{"score":{"name":"%cool1_s","objective":"global"},"color":"gray"},{"text":".","color":"gray"},{"score":{"name":"%cool1_ds","objective":"global"},"color":"gray"},{"text":"]","color":"gray"}]


scoreboard players reset %cool1_s
scoreboard players reset %cool1_ds
scoreboard players reset %cool2_s
scoreboard players reset %cool2_ds
scoreboard players reset %cool3_s
scoreboard players reset %cool3_ds
