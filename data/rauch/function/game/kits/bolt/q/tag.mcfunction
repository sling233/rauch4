# called by hit (bolt is @s, tagged person is victim)
scoreboard players operation t_victim_pnum temp = @a[tag=victim,limit=1] pnum

function rauch:macros/data_get {storage:"bolt_hit"}

scoreboard players set t_is_in_list temp 0
function rauch:macros/foreach {for_path:"macros data.list",for_function:"rauch:game/kits/bolt/q/is_in_list_check"}

execute if score t_is_in_list temp matches 0 run data modify storage macros data.list prepend value -1
execute if score t_is_in_list temp matches 0 run execute store result storage macros data.list[0] int 1 run scoreboard players get t_victim_pnum temp
execute if score t_is_in_list temp matches 0 at @s run playsound minecraft:entity.arrow.hit_player master @s
execute if score t_is_in_list temp matches 0 as @a[tag=victim,limit=1] run effect give @s minecraft:glowing 400 1 true

scoreboard players reset t_is_in_list temp
scoreboard players reset t_victim_pnum temp

function rauch:macros/data_write {storage:"bolt_hit"}
