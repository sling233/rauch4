# gets called when wokkaman gets a kill
scoreboard players operation t_add_rocket_count temp = @s wokkaman_rockets_per_kill
function rauch:game/kits/wokkaman/q/add_n_rockets

scoreboard players operation t_add_mace_uses_count temp = @s wokkaman_mace_uses_per_kill
function rauch:game/kits/wokkaman/mace/give_mace

scoreboard players operation t_add_firework_count temp = @s wokkaman_fireworks_per_kill
function rauch:game/kits/wokkaman/fireworks/give_n_fireworks

scoreboard players operation t_add_wind_charges_count temp = @s wokkaman_wind_charges_per_kill
function rauch:game/kits/wokkaman/wind_charges/give_n

execute at @s run playsound entity.item.pickup