#executed at hacker, as hit player
scoreboard players set @s hack 120
scoreboard players set @p hack_tag_timer 120

scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players operation t_two_thirds_hacker_cool temp = @p cool1_target
scoreboard players operation t_two_thirds_hacker_cool temp *= 2 const
scoreboard players operation t_two_thirds_hacker_cool temp /= 3 const
scoreboard players operation @p cool1 += t_two_thirds_hacker_cool temp
scoreboard players reset t_two_thirds_hacker_cool temp


function rauch:game/ui/bossbar/hack/set_max
function rauch:game/ui/bossbar/hack/visible

# additional kit-specific hack_init tasks
function rauch:game/kits/hack_init


# check if player was already tagged (if yes found is set to 1)
tag @s add temp
scoreboard objectives add found dummy
execute as @p run function rauch:macros/data_get {storage:"hacker_r_tag"}
# check if player was already tagged (if yes found is set to 1)
execute as @p run function rauch:macros/foreach {for_path:"macros data.list",for_function:"rauch:game/kits/hacker/r/tag/check_new"}
execute unless score Global found matches 1 run function rauch:game/kits/hacker/r/tag/check_not_found
execute as @p run function rauch:macros/data_write {storage:"hacker_r_tag"}
execute as @p at @s run playsound minecraft:entity.arrow.hit_player master @s
execute at @s run playsound minecraft:entity.allay.ambient_with_item master @s
scoreboard objectives remove found
tag @s remove temp

execute as @e[type=marker,tag=hacker,tag=temp] run function rauch:game/kits/hacker/r/kill
