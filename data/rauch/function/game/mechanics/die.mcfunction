# as the player that just died
scoreboard players reset @s death
gamemode spectator @s
tag @s add dead

scoreboard players set @s respawn 0
execute if score @s kit matches 1 run function rauch:game/ability/bolt/bolt_die
execute if score @s kit matches 2 run function rauch:game/ability/zarzahn/zarzahn_die
execute if score @s kit matches 3 run function rauch:game/ability/raucher/raucher_die
#execute if score @s kit matches 4 run function rauch:game/ability/hacker/hacker_die
execute if score @s kit matches 5 run function rauch:game/ability/wark/wark_die
execute if score @s kit matches 6 run function rauch:game/ability/teleporter/teleporter_die
#execute if score @s kit matches 7 run function rauch:game/ability/tank/tank_die
execute if score @s kit matches 8 run function rauch:game/ability/flyer/flyer_die
execute if score @s kit matches 9 run function rauch:game/ability/wokkaman/wokkaman_die

# kill all entities that belong to the player dying and have the remove_on_death tag
execute at @s as @e[type=marker,tag=remove_on_death] if score @s pnum = @p pnum run kill @s
execute at @s as @e[type=armor_stand,tag=remove_on_death] if score @s pnum = @p pnum run kill @s

# bossbars
function rauch:game/ui/bossbar/elytra/invisible
function rauch:game/ui/bossbar/speed/invisible
function rauch:game/ui/bossbar/wark/invisible
function rauch:game/ui/bossbar/zarzahn/invisible
# respawn visible wenn mode nicht deathmatch oder testing mode ist und man nicht wokkaman ist
execute unless score Global mode matches 0 unless score Global mode matches 3 unless entity @s[tag=wokkaman] run function rauch:game/ui/bossbar/respawn/visible

scoreboard players reset @s hacker_damage_timer
scoreboard players reset @s raucherdmg
scoreboard players reset @s raucherdmg_num
scoreboard players reset @s tank_resistance
scoreboard players reset @s tank_resistance_num
scoreboard players reset @s teleweak
scoreboard players set @s armor_target 80

execute as @s[tag=wok_stepped_on] run function rauch:game/ability/wokkaman/sq/kill_my_boat
execute as @s[tag=zarzahn_hook] run function rauch:game/ability/zarzahn/r/cancel_hook
execute as @s[tag=wok_hook] run function rauch:game/ability/wokkaman/r/cancel_hook
# remove from wokkaman sr tag lists
function rauch:game/ability/wokkaman/sr/remove_tag
function rauch:game/ability/bolt/q/remove_me

function rauch:game/mechanics/unstun

# check if @s was tagged by a hacker (got_reawrd is so the hacker doesn't get 2 charges if r and q tagged @s when he died)
scoreboard objectives add got_reward dummy
#function rauch:game/ability/hacker/r/tag/check_me
function rauch:game/ability/hacker/r/tagged_player_died
function rauch:game/ability/hacker/q/tagged_player_died
scoreboard objectives remove got_reward

function rauch:game/ability/hacker/r/hack_end

tag @s remove raucher_control
tag @s remove wok_stomp_search
tag @s remove wok_stepped_on
clear @s carrot_on_a_stick
execute if score Global mode matches 4 as @s[tag=flagPickedUp] run function rauch:game/mode/capture_the_flag/flag_drop
execute if score Global mode matches 2 as @s[team=Red] run scoreboard players add Global killNumBlue 1
execute if score Global mode matches 2 as @s[team=Blue] run scoreboard players add Global killNumRed 1
function rauch:game/mechanics/weapon
function rauch:game/mechanics/armor
attribute @s minecraft:gravity base set 0.08

# set night vision
execute as @s[scores={night_vision_accessibility=2}] run effect give @s minecraft:night_vision infinite 0 true
execute if score Global map_is_dark matches 1 as @a[tag=game,scores={night_vision_accessibility=1}] run effect give @s minecraft:night_vision infinite 0 true
