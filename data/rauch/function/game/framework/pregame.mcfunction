clear @s
gamemode adventure @s
recipe take @s *
#advancement revoke @s everything
scoreboard players set @s cool1 0
scoreboard players set @s cool2 0
scoreboard players set @s cool3 0
scoreboard players set @s[scores={kit=9}] cool4 0
scoreboard players set @s[scores={kit=9}] cool5 0
scoreboard players set @s[scores={kit=9}] cool6 0
scoreboard players set @s[scores={kit=9}] wokkaman_rocket_count 0
scoreboard players set @s stats_g_kills 0
scoreboard players set @s stats_g_deaths 0
scoreboard players set @s stats_g_damage_d 0
scoreboard players set @s stats_g_damage_t 0
scoreboard players reset @s leave
scoreboard players reset @s death
scoreboard players reset @s dropcoas
scoreboard players reset @s raucherdmg
scoreboard players reset @s tank_resistance
scoreboard players set @s tank_damage_taken 0
scoreboard players set @s heal 40


scoreboard players operation @s game_id = Global game_id

scoreboard players set @s armor_target 80
# change this if more wokkaman texture are added
execute if score @s kit matches 9 store result score @s wokkaman_weapon run random value 0..4
execute if score @s kit matches 9 store result score @s wokkaman_helmet run random value 0..50
execute if score @s wokkaman_helmet matches 1.. run scoreboard players set @s wokkaman_helmet 1
function rauch:game/kits/set_weapon
function rauch:game/mechanics/set_stats
function rauch:game/kits/set_armor_body
function rauch:game/mechanics/set_helmet
item replace entity @s saddle with minecraft:heavy_core[equippable={slot:"saddle"}]
function rauch:game/mechanics/set_protection

effect give @s minecraft:hunger 6 255 true
effect give @s minecraft:resistance 4 255 true
#effect give @s minecraft:regeneration 3 255 true

# set night vision
execute unless score @s actionbar_design matches 0.. run scoreboard players set @s actionbar_design 3
execute as @s[scores={night_vision_accessibility=2}] run effect give @s minecraft:night_vision infinite 0 true
