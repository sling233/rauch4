#executed at hacker, as hit player
execute unless score @s hacker_damage_timer matches 1.. run scoreboard players remove @s armor_target 1
function rauch:game/mechanics/armor
scoreboard players set @s hacker_damage_timer 240
scoreboard players set @p hacker_damage_timer_control 240
effect give @s minecraft:conduit_power 12 0 false
execute at @s run playsound minecraft:entity.allay.death master @s
execute as @p at @s run playsound minecraft:entity.arrow.hit_player master @s

tag @s add temp
scoreboard objectives add found dummy
execute as @p run function rauch:macros/data_get {storage:"hacker_r_tag"}
# check if player was already tagged (if yes found is set to 1)
execute as @p run function rauch:macros/foreach {for_path:"macros data.list",for_function:"rauch:game/ability/hacker/r/tag/check_new"}
execute unless score Global found matches 1 run function rauch:game/ability/hacker/r/tag/check_not_found
execute as @p run function rauch:macros/data_write {storage:"hacker_r_tag"}

scoreboard objectives remove found
tag @s remove temp

execute as @e[type=marker,tag=hacker,tag=temp] run function rauch:game/ability/hacker/r/kill
