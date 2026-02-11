# gets called when wokkaman gets a kill
scoreboard players set t_add_rocket_count temp 4
function rauch:game/kits/wokkaman/q/add_n_rockets

function rauch:game/kits/wokkaman/give_mace

scoreboard players operation t_add_firework_count temp = @s wokkaman_fireworks_per_kill
function rauch:game/kits/wokkaman/fireworks/give_n_fireworks

execute at @s run playsound entity.item.pickup