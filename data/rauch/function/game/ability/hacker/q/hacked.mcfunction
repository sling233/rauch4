# hacker has tag t_hacker
scoreboard players set @s hack 160
scoreboard players set @a[tag=t_hacker] hack_tag_timer 160
function rauch:game/ability/hacker/q/hack_init

# check if player was already tagged (if yes found is set to 1)
tag @s add temp
scoreboard objectives add found dummy
execute as @a[tag=t_hacker] run function rauch:macros/data_get {storage:"hacker_q_tag"}
# check if player was already tagged (if yes found is set to 1)
execute as @a[tag=t_hacker] run function rauch:macros/foreach {for_path:"macros data.list",for_function:"rauch:game/ability/hacker/q/tag/check_new"}
execute unless score Global found matches 1 run function rauch:game/ability/hacker/q/tag/check_not_found
execute as @a[tag=t_hacker] run function rauch:macros/data_write {storage:"hacker_q_tag"}

scoreboard objectives remove found
tag @s remove temp
