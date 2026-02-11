execute if score @s wokkaman_mace_starting_uses matches ..0 run return 0

scoreboard players operation t_add_mace_uses_count temp = @s wokkaman_mace_starting_uses
function rauch:game/kits/wokkaman/mace/give_mace