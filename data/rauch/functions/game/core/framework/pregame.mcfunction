clear @s
gamemode adventure @s
recipe take @s *
advancement revoke @s everything
scoreboard players set @s cool1 1
scoreboard players set @s cool2 1
scoreboard players set @s cool3 1
scoreboard players set @s stats_g_kills 0
scoreboard players set @s stats_g_deaths 0
scoreboard players set @s stats_g_damage_d 0
scoreboard players set @s stats_g_damage_t 0
scoreboard players reset @s leave
scoreboard players reset @s death
scoreboard players reset @s dropcoas
scoreboard players reset @s raucherdmg
scoreboard players reset @s tank_resistance

function rauch:game/core/mechanics/weapon
function rauch:game/core/mechanics/stats
function rauch:game/core/mechanics/armor

effect give @s minecraft:hunger 6 255 true
effect give @s minecraft:resistance 6 255 true
effect give @s minecraft:regeneration 3 255 true
