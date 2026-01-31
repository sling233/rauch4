execute if score @s kit matches 1 run return run function rauch:game/ability/bolt/armor
execute if score @s kit matches 2 run return run function rauch:game/ability/zarzahn/armor
execute if score @s kit matches 3 run return run function rauch:game/ability/raucher/armor
execute if score @s kit matches 4 run return run function rauch:game/ability/hacker/armor
execute if score @s kit matches 5 run return run function rauch:game/ability/wark/armor
execute if score @s kit matches 6 run return run function rauch:game/ability/teleporter/armor
execute if score @s kit matches 7 run return run function rauch:game/ability/tank/armor
execute if score @s kit matches 8 run return run function rauch:game/ability/flyer/armor
execute if score @s kit matches 9 run return run function rauch:game/ability/wokkaman/armor

tellraw @p ["Error when trying to set body armor of ",{"selector":"@s"},": not implemented for kit id ",{"score":{"name":"@s","objective":"kit"}}]