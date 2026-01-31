# adds n rockets, specify n in t_add_rocket_count temp (resets automatically)
execute if score t_add_rocket_count temp matches ..0 run return run scoreboard players reset t_add_rocket_count temp

function rauch:game/kits/wokkaman/q/add_rocket

scoreboard players remove t_add_rocket_count temp 1
function rauch:game/kits/wokkaman/q/add_n_rockets
