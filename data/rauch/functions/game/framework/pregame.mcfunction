clear @s
gamemode adventure @s
recipe take @s *
#advancement revoke @s everything
scoreboard players set @s cool1 1
scoreboard players set @s cool2 1
scoreboard players set @s cool3 1
scoreboard players set @s[scores={kit=4}] hacker_charges 1
scoreboard players set @s[scores={kit=5}] wark_charge 0
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

scoreboard players operation @s game_id = Global game_id

scoreboard players set @s armor_target 20
function rauch:game/mechanics/weapon
function rauch:game/mechanics/stats
function rauch:game/mechanics/armor

effect give @s minecraft:hunger 6 255 true
effect give @s minecraft:resistance 4 255 true
effect give @s minecraft:regeneration 3 255 true
