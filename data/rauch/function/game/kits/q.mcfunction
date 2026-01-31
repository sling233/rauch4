# called by player function if the player drops the weapon, is neither hacked nor stunned and is not sneaking

execute as @s[scores={kit=1}] run return run function rauch:game/kits/bolt/q
execute as @s[scores={kit=2}] run return run function rauch:game/kits/zarzahn/q
execute as @s[scores={kit=3}] run return run function rauch:game/kits/raucher/q
execute as @s[scores={kit=4}] run return run function rauch:game/kits/hacker/q
execute as @s[scores={kit=5}] run return run function rauch:game/kits/wark/q
execute as @s[scores={kit=6}] run return run function rauch:game/kits/teleporter/q
execute as @s[scores={kit=7}] run return run function rauch:game/kits/tank/q
execute as @s[scores={kit=8}] run return run function rauch:game/kits/flyer/q
execute as @s[scores={kit=9}] run return run function rauch:game/kits/wokkaman/q


tellraw @s [{text:"",color:"red"},"Error when trying to run q function for ",{"selector":"@s"},": not implemented for kit id ",{"score":{"name":"@s","objective":"kit"}}]
