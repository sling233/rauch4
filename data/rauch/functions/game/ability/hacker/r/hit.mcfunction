#executed at hacker, as hit player
scoreboard players remove @s armor_target 1
function rauch:game/mechanics/armor
scoreboard players set @s hacker_damage_timer 240
scoreboard players set @p hacker_damage_timer_control 240
effect give @s minecraft:conduit_power 12 0 false
execute at @s run playsound minecraft:entity.allay.death master @s
execute as @p at @s run playsound minecraft:entity.arrow.hit_player master @s

# cycles through hacker_r_tag until @s data is in front
execute as @p run function rauch:game/ability/hacker/r/array/find_me

# check if player was already tagged (if yes found is set to 1)
scoreboard objectives add found dummy
function rauch:game/ability/hacker/r/array/find_pnum_check
execute unless score Global found matches 1 run data modify storage game_data hacker_r_tag[0].list prepend value -1
execute unless score Global found matches 1 run execute store result storage game_data hacker_r_tag[0].list[0] int 1 run scoreboard players get @s pnum
scoreboard objectives remove found

execute as @e[type=marker,tag=hacker,tag=temp] run function rauch:game/ability/hacker/r/kill

