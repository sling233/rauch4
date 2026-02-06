# called by player function if the player right clicks with the weapon, is neither hacked nor stunned and is sneaking

execute as @s[scores={kit=1}] run return run function rauch:game/kits/bolt/r
execute as @s[scores={kit=2}] run return run function rauch:game/kits/zarzahn/r
execute as @s[scores={kit=3}] run return run function rauch:game/kits/raucher/sr
execute as @s[scores={kit=4}] run return run function rauch:game/kits/hacker/r
execute as @s[scores={kit=5}] run return run function rauch:game/kits/wark/r
execute as @s[scores={kit=6}] run return run function rauch:game/kits/teleporter/r
execute as @s[scores={kit=7}] run return run function rauch:game/kits/tank/r
execute as @s[scores={kit=8}] run return run function rauch:game/kits/pikka/r
execute as @s[scores={kit=9}] run return run function rauch:game/kits/wokkaman/sr


execute unless score @s kit matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to run sr function, kit id unset"]
scoreboard players operation err temp = @s kit
tellraw @a [{text:"",color:"red"},"Error when trying to run sr function, not implemented for kit id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp