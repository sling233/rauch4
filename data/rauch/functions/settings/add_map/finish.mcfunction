data modify entity @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] CustomName set from entity @s Inventory[{Slot:0b}].tag.pages[0]

tellraw @s [{"text":"Internal Id: ","color":"green"},{"score":{"name":"@e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1]","objective":"mapId"},"color":"light_purple"}]

execute unless score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 1..10 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"None","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 1 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Ash","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 2 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Crimson Spore","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 3 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Enchanted Hit","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 4 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Glow","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 5 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Nautilus","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 6 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Snowflake","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 7 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Small Flame","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 8 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Warped Spore","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 9 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"White Ash","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle matches 10 run tellraw @s [{"text":"Ambient Particle: ","color":"green"},{"text":"Witch","color":"light_purple"}]

execute unless score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapTime matches 1..4 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Unset","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapTime matches 1 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Day","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapTime matches 2 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Noon","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapTime matches 3 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Night","color":"light_purple"}]
execute if score @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapTime matches 4 run tellraw @s [{"text":"Map Time: ","color":"green"},{"text":"Midnight","color":"light_purple"}]

tellraw @s [{"text":"Added Map ","color":"green"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1]","interpret":true,"color":"light_purple"}]

tellraw @s {"text":"------------- Added Map -------------","color":"yellow"}

tag @e[type=armor_stand,tag=map,tag=adding] remove adding
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tag @s remove addmap
clear @s
scoreboard players reset @s mapId
scoreboard players reset @s click
tag @s add lobby
