execute as @s[scores={damage_taken=..7}] run data merge storage dmg_numbers {color:"aqua"}
execute as @s[scores={damage_taken=8..16}] run data merge storage dmg_numbers {color:"white"}
execute as @s[scores={damage_taken=17..29}] run data merge storage dmg_numbers {color:"yellow"}
execute as @s[scores={damage_taken=30..39}] run data merge storage dmg_numbers {color:"gold"}
execute as @s[scores={damage_taken=40..49}] run data merge storage dmg_numbers {color:"red"}
execute as @s[scores={damage_taken=50..69}] run data merge storage dmg_numbers {color:"dark_red"}
execute as @s[scores={damage_taken=70..}] run data merge storage dmg_numbers {color:"black"}
execute store result storage dmg_numbers dmg int 1 run scoreboard players get @s damage_taken

summon item ~ ~1.6 ~ {Tags:["setup"],CustomNameVisible:1b,Age:5980,PickupDelay:32767,Motion:[0.1,0.3,0.005],CustomName:'{"text":"f"}',Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:0}}}
function rauch:game/ui/set_damage_name with storage minecraft:dmg_numbers

tag @e[type=item,tag=setup,limit=1] remove setup
scoreboard players reset @s damage_taken
