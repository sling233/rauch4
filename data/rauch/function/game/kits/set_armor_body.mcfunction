execute if score @s kit matches 1 run return run function rauch:game/kits/bolt/armor
execute if score @s kit matches 2 run return run function rauch:game/kits/zarzahn/armor
execute if score @s kit matches 3 run return run function rauch:game/kits/raucher/armor
execute if score @s kit matches 4 run return run function rauch:game/kits/hacker/armor
execute if score @s kit matches 5 run return run function rauch:game/kits/wark/armor
execute if score @s kit matches 6 run return run function rauch:game/kits/teleporter/armor
execute if score @s kit matches 7 run return run function rauch:game/kits/tank/armor
execute if score @s kit matches 8 run return run function rauch:game/kits/pikka/armor
execute if score @s kit matches 9 run return run function rauch:game/kits/wokkaman/armor

execute unless score @s kit matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to run armor function, kit id unset"]
scoreboard players operation err temp = @s kit
tellraw @a [{text:"",color:"red"},"Error when trying to run armor function, not implemented for kit id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp