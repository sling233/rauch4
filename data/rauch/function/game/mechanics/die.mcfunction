# as the player that just died
scoreboard players reset @s death
gamemode spectator @s
tag @s add dead

scoreboard players set @s respawn 0
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

# respawn visible wenn mode nicht deathmatch oder testing mode ist und man nicht wokkaman ist
execute unless score Global mode matches 0 unless score Global mode matches 3 unless entity @s[tag=wokkaman] run function rauch:game/ui/bossbar/respawn/visible
execute if score Global mode matches 4 as @s[tag=flagPickedUp] run function rauch:game/mode/capture_the_flag/flag_drop
execute if score Global mode matches 2 as @s[team=Red] run scoreboard players add Global killNumBlue 1
execute if score Global mode matches 2 as @s[team=Blue] run scoreboard players add Global killNumRed 1

#function rauch:game/kits/weapon
#function rauch:game/kits/set_armor_body
function rauch:game/mechanics/set_helmet

effect clear @s
# set night vision
execute as @s[scores={night_vision_accessibility=2}] run effect give @s minecraft:night_vision infinite 0 true
execute if score Global map_is_dark matches 1 as @a[tag=game,scores={night_vision_accessibility=1}] run effect give @s minecraft:night_vision infinite 0 true
