# hacker has tag t_hacker
execute unless score @s hacker_damage_timer matches 1.. run scoreboard players remove @s armor_target 5
function rauch:game/mechanics/set_armor_protection
scoreboard players set @s hacker_damage_timer 240
scoreboard players set @a[tag=t_hacker] hacker_damage_timer_control 240
effect give @s minecraft:conduit_power 12 0 false
execute at @s run playsound minecraft:entity.allay.death master @s


tag @s add temp
scoreboard objectives add found dummy
execute as @a[tag=t_hacker] run function rauch:macros/data_get {storage:"hacker_q_tag"}
# check if player was already tagged (if yes found is set to 1)
execute as @a[tag=t_hacker] run function rauch:macros/foreach {for_path:"macros data.list",for_function:"rauch:game/ability/hacker/q/tag/check_new"}
execute unless score Global found matches 1 run function rauch:game/ability/hacker/q/tag/check_not_found
execute as @a[tag=t_hacker] run function rauch:macros/data_write {storage:"hacker_q_tag"}

scoreboard objectives remove found
tag @s remove temp
