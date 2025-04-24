scoreboard players remove @s wokkaman_starting_firework_rocket_count 1
function rauch:game/ability/wokkaman/give_firework

execute if score @s wokkaman_starting_firework_rocket_count matches 1.. run function rauch:game/framework/wokkaman_give_starting_firework_rockets
