scoreboard players set @s cool1 0
scoreboard players set @s cool2 0
scoreboard players set @s cool3 0

scoreboard players set @s stats_g_kills 0
scoreboard players set @s stats_g_deaths 0
scoreboard players set @s stats_g_damage_d 0
scoreboard players set @s stats_g_damage_t 0

# scores
scoreboard players reset @s leave
scoreboard players reset @s death
scoreboard players reset @s dropcoas
scoreboard players reset @s click
scoreboard players reset @s click_warped

# inventory
clear @s
# recipe take @s *
#advancement revoke @s everything
item replace entity @s saddle with minecraft:heavy_core[equippable={slot:"saddle",equip_sound:"intentionally_empty"}]
scoreboard players set @s armor_target 80
function rauch:game/mechanics/set_protection

gamemode adventure @s
# immediately heal the player
scoreboard players set @s heal 40

# set night vision
execute as @s[scores={night_vision_accessibility=2}] run effect give @s minecraft:night_vision infinite 0 true
# just to be sure
execute unless score @s actionbar_design matches 0.. run scoreboard players set @s actionbar_design 3

# kit specific scores etc that need to set
function rauch:game/kits/setup

function rauch:game/mechanics/set_stats
function rauch:game/kits/set_cooldowns

function rauch:game/mechanics/set_weapon
function rauch:game/kits/set_armor_body
function rauch:game/mechanics/set_helmet

# mode specific player settings/overrides
function rauch:game/mode/player_setup
# kit specific init stuff that has to react to changing settings from the mode. No settings here.
function rauch:game/kits/post_setup