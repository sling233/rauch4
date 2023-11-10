# lifetime
scoreboard players add @s click 1
# gravity
scoreboard players add @s stun 1

# filter players
# saves tag list to storage macros data
function rauch:macros/data_get {storage:"wok_bow_id"}
# tags every player in list with tag wok_bow_tagged
function rauch:macros/foreach {for_path:"macros data.list",for_function:"rauch:game/ability/wokkaman/sr/tagging"}

# tag wokka
execute at @a if score @p pnum = @s pnum run tag @p add t_wokka

execute store result storage temp gravity float 0.01 run scoreboard players get @s stun
function rauch:game/ability/wokkaman/sr/move_macro with storage temp

function rauch:macros/data_write {storage:"wok_bow_id"}
tag @a remove wok_bow_tagged
#execute as @s[scores={click=10}] run scoreboard players set @s stun 10
#execute as @s[scores={click=10}] run tp @s ~ ~ ~ 0 -89
execute as @s[scores={click=30..}] run function rauch:game/ability/wokkaman/sr/destroy
tag @a remove t_wokka
