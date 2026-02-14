
execute unless score @s actionbar_design matches 0.. run scoreboard players set @s actionbar_design 3

scoreboard players set @s cool1 0
scoreboard players set @s cool2 0
scoreboard players set @s cool3 0

scoreboard players set @s stats_g_kills 0
scoreboard players set @s stats_g_deaths 0
scoreboard players set @s stats_g_damage_d 0
scoreboard players set @s stats_g_damage_t 0

# kit specific scores etc that need to set
function rauch:game/kits/setup

# set night vision
execute as @s[scores={night_vision_accessibility=2}] run effect give @s minecraft:night_vision infinite 0 true


function rauch:game/mechanics/set_stats
function rauch:game/kits/set_cooldowns
function rauch:game/mechanics/set_weapon
function rauch:game/kits/set_armor_body
function rauch:game/mechanics/set_helmet