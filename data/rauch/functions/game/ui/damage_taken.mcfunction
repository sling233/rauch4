tag @s add dmg
execute as @s[scores={damage_taken=..7}] run setblock ~ 255 ~ oak_sign{front_text:{messages:['{"score":{"name":"@a[tag=dmg,limit=1]","objective":"damage_taken"},"color":"aqua"}','{"text":""}','{"text":""}','{"text":""}']}} replace
execute as @s[scores={damage_taken=8..16}] run setblock ~ 255 ~ oak_sign{front_text:{messages:['{"score":{"name":"@a[tag=dmg,limit=1]","objective":"damage_taken"},"color":"white"}','{"text":""}','{"text":""}','{"text":""}']}} replace
execute as @s[scores={damage_taken=17..29}] run setblock ~ 255 ~ oak_sign{front_text:{messages:['{"score":{"name":"@a[tag=dmg,limit=1]","objective":"damage_taken"},"color":"yellow"}','{"text":""}','{"text":""}','{"text":""}']}} replace
execute as @s[scores={damage_taken=30..39}] run setblock ~ 255 ~ oak_sign{front_text:{messages:['{"score":{"name":"@a[tag=dmg,limit=1]","objective":"damage_taken"},"color":"gold"}','{"text":""}','{"text":""}','{"text":""}']}} replace
execute as @s[scores={damage_taken=40..49}] run setblock ~ 255 ~ oak_sign{front_text:{messages:['{"score":{"name":"@a[tag=dmg,limit=1]","objective":"damage_taken"},"color":"red"}','{"text":""}','{"text":""}','{"text":""}']}} replace
execute as @s[scores={damage_taken=50..69}] run setblock ~ 255 ~ oak_sign{front_text:{messages:['{"score":{"name":"@a[tag=dmg,limit=1]","objective":"damage_taken"},"color":"dark_red"}','{"text":""}','{"text":""}','{"text":""}']}} replace
execute as @s[scores={damage_taken=70..}] run setblock ~ 255 ~ oak_sign{front_text:{messages:['{"score":{"name":"@a[tag=dmg,limit=1]","objective":"damage_taken"},"color":"black"}','{"text":""}','{"text":""}','{"text":""}']}} replace
summon item ~ ~1.6 ~ {Tags:["setup"],CustomNameVisible:1b,Age:5980,PickupDelay:32767,Motion:[0.1,0.3,0.005],CustomName:'{"text":"f"}',Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:0}}}
data modify entity @e[type=item,tag=setup,limit=1] CustomName set from block ~ 255 ~ front_text.messages[0]
tag @e[type=item,tag=setup,limit=1] remove setup
setblock ~ 255 ~ air
scoreboard players reset @s damage_taken
tag @s remove dmg
