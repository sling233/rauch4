scoreboard players remove @s wokkaman_starting_mace_count 1
function rauch:game/kits/wokkaman/give_mace

execute if score @s wokkaman_starting_mace_count matches 1.. run function rauch:game/framework/wokkaman_give_starting_maces
