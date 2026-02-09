# kill all entities that belong to the player dying and have the remove_on_death tag
scoreboard players operation t_pnum temp = @s pnum
execute as @e[type=marker,tag=remove_on_death] if score @s pnum = t_pnum temp run kill @s
execute as @e[type=armor_stand,tag=remove_on_death] if score @s pnum = t_pnum temp run kill @s
scoreboard players reset t_pnum temp

function rauch:game/kits/die
function rauch:game/kits/other_died

scoreboard players reset @s hack
function rauch:game/ui/bossbar/hack/invisible

function rauch:game/mechanics/unstun




function rauch:game/framework/move_player
