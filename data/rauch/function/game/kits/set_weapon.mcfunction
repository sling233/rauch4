execute if score @s kit matches 1 run return run function rauch:game/kits/bolt/weapon
execute if score @s kit matches 2 run return run function rauch:game/kits/zarzahn/weapon
execute if score @s kit matches 3 run return run function rauch:game/kits/raucher/weapon
execute if score @s kit matches 4 run return run function rauch:game/kits/hacker/weapon
execute if score @s kit matches 5 run return run function rauch:game/kits/wark/weapon
execute if score @s kit matches 6 run return run function rauch:game/kits/teleporter/weapon
execute if score @s kit matches 7 run return run function rauch:game/kits/tank/weapon
execute if score @s kit matches 8 run return run function rauch:game/kits/pikka/weapon
execute if score @s kit matches 9 run return run function rauch:game/kits/wokkaman/weapon

tellraw @a [{text:"",color:"red"},"Error when trying to give weapon, not implemented for kit id ",{"score":{"name":"@s","objective":"kit"}}]