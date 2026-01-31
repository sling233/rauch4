# additional kit-specific hack_init tasks

execute if score @s kit matches 1 run return run function rauch:game/kits/bolt/hack_init
execute if score @s kit matches 2 run return run function rauch:game/kits/zarzahn/hack_init
execute if score @s kit matches 3 run return run function rauch:game/kits/raucher/hack_init
execute if score @s kit matches 4 run return run function rauch:game/kits/hacker/hack_init
execute if score @s kit matches 5 run return run function rauch:game/kits/wark/hack_init
execute if score @s kit matches 6 run return run function rauch:game/kits/teleporter/hack_init
execute if score @s kit matches 7 run return run function rauch:game/kits/tank/hack_init
execute if score @s kit matches 8 run return run function rauch:game/kits/flyer/hack_init
execute if score @s kit matches 9 run return run function rauch:game/kits/wokkaman/hack_init


tellraw @s ["Error when trying to run hack_init function for ",{"selector":"@s"},": not implemented for kit id ",{"score":{"name":"@s","objective":"kit"}}]
