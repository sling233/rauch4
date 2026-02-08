execute if score @s kit matches 1 run return run dialog show @s rauch:kits/bolt
execute if score @s kit matches 2 run return run dialog show @s rauch:kits/zarzahn
execute if score @s kit matches 3 run return run dialog show @s rauch:kits/raucher
execute if score @s kit matches 4 run return run dialog show @s rauch:kits/hacker
execute if score @s kit matches 5 run return run dialog show @s rauch:kits/wark
execute if score @s kit matches 6 run return run dialog show @s rauch:kits/teleporter
execute if score @s kit matches 7 run return run dialog show @s rauch:kits/tank
execute if score @s kit matches 8 run return run dialog show @s rauch:kits/pikka
execute if score @s kit matches 9 run return run dialog show @s rauch:kits/wokkaman

execute unless score @s kit matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to run ability_reminder function, kit id unset"]
scoreboard players operation err temp = @s kit
tellraw @a [{text:"",color:"red"},"Error when trying to run ability_reminder function, not implemented for kit id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp