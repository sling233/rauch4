# called by player function if the player swaps the weapon into their offhand, is neither hacked nor stunned and is sneaking

execute as @s[scores={kit=1}] run return run function rauch:game/kits/bolt/f
execute as @s[scores={kit=2}] run return run function rauch:game/kits/zarzahn/sf
execute as @s[scores={kit=3}] run return run function rauch:game/kits/raucher/f
execute as @s[scores={kit=4}] run return run function rauch:game/kits/hacker/f
execute as @s[scores={kit=5}] run return run function rauch:game/kits/wark/f
execute as @s[scores={kit=6}] run return run function rauch:game/kits/teleporter/f
execute as @s[scores={kit=7}] run return run function rauch:game/kits/tank/f
execute as @s[scores={kit=8}] run return run function rauch:game/kits/pikka/f
execute as @s[scores={kit=9}] run return run function rauch:game/kits/wokkaman/sf


tellraw @s [{text:"",color:"red"},"Error when trying to run sf function for ",{"selector":"@s"},": not implemented for kit id ",{"score":{"name":"@s","objective":"kit"}}]
