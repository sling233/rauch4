# gets called by mechanics/die (which gets called once everytime the player died)

execute if score @s kit matches 1 run return run function rauch:game/kits/bolt/die
execute if score @s kit matches 2 run return run function rauch:game/kits/zarzahn/die
execute if score @s kit matches 3 run return run function rauch:game/kits/raucher/die
execute if score @s kit matches 4 run return run function rauch:game/kits/hacker/die
execute if score @s kit matches 5 run return run function rauch:game/kits/wark/die
execute if score @s kit matches 6 run return run function rauch:game/kits/teleporter/die
execute if score @s kit matches 7 run return run function rauch:game/kits/tank/die
execute if score @s kit matches 8 run return run function rauch:game/kits/flyer/die
execute if score @s kit matches 9 run return run function rauch:game/kits/wokkaman/die

tellraw @s ["Error when trying to run die function for ",{"selector":"@s"},": not implemented for kit id ",{"score":{"name":"@s","objective":"kit"}}]