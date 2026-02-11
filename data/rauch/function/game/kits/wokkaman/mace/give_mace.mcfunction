# t_add_mace_uses_count temp

execute store result storage temp mace.max_damage int 1 run scoreboard players get @s wokkaman_mace_max_uses
scoreboard players operation t_mace_damage temp = @s wokkaman_mace_max_uses
scoreboard players operation t_mace_damage temp -= t_add_mace_uses_count temp
execute store result storage temp mace.damage int 1 run scoreboard players get t_mace_damage temp
execute unless items entity @s hotbar.2 mace run return run function rauch:game/kits/wokkaman/mace/give_new_mace with storage temp mace

data remove storage temp mace

function rauch:game/kits/wokkaman/mace/add_1_dura