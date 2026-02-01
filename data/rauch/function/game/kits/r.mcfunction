# called by player function if the player right clicks with the weapon, is neither hacked nor stunned and is not sneaking

execute as @s[scores={kit=1}] run return run function rauch:game/kits/bolt/r
execute as @s[scores={kit=2}] run return run function rauch:game/kits/zarzahn/r
execute as @s[scores={kit=3}] run return run function rauch:game/kits/raucher/r
execute as @s[scores={kit=4}] run return run function rauch:game/kits/hacker/r
execute as @s[scores={kit=5}] run return run function rauch:game/kits/wark/r
execute as @s[scores={kit=6}] run return run function rauch:game/kits/teleporter/r
execute as @s[scores={kit=7}] run return run function rauch:game/kits/tank/r
execute as @s[scores={kit=8}] run return run function rauch:game/kits/pikka/r
execute as @s[scores={kit=9}] run return run function rauch:game/kits/wokkaman/r


tellraw @s [{text:"",color:"red"},"Error when trying to run r function for ",{"selector":"@s"},": not implemented for kit id ",{"score":{"name":"@s","objective":"kit"}}]
