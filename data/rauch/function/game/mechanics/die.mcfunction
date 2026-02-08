# as the player that just died
scoreboard players reset @s death
gamemode spectator @s
tag @s add dead

# kill all entities that belong to the player dying and have the remove_on_death tag
scoreboard players operation t_pnum temp = @s pnum
execute as @e[type=marker,tag=remove_on_death] if score @s pnum = t_pnum temp run kill @s
execute as @e[type=armor_stand,tag=remove_on_death] if score @s pnum = t_pnum temp run kill @s
scoreboard players reset t_pnum temp


# kit specific death functions
function rauch:game/kits/die
function rauch:game/kits/other_died


scoreboard players set @s armor_target 80
function rauch:game/mechanics/set_protection
# not in hacker other_died because hack is also used in capture the flag
#function rauch:game/kits/hacker/r/hack_end
scoreboard players reset @s hack
function rauch:game/ui/bossbar/hack/invisible

function rauch:game/mechanics/unstun

# mode specific death function
function rauch:game/mode/player_died

execute if entity @s[tag=can_respawn] run function rauch:game/mechanics/respawn/init


# effects
effect clear @s
# set night vision
execute as @s[scores={night_vision_accessibility=2}] run effect give @s minecraft:night_vision infinite 0 true
execute if score Global map_is_dark matches 1 as @a[tag=game,scores={night_vision_accessibility=1}] run effect give @s minecraft:night_vision infinite 0 true
