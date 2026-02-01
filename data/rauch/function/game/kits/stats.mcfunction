
execute as @s[scores={kit=1}] run return run function rauch:game/kits/bolt/stats
execute as @s[scores={kit=2}] run return run function rauch:game/kits/zarzahn/stats
execute as @s[scores={kit=3}] run return run function rauch:game/kits/raucher/stats
execute as @s[scores={kit=4}] run return run function rauch:game/kits/hacker/stats
execute as @s[scores={kit=5}] run return run function rauch:game/kits/wark/stats
execute as @s[scores={kit=6}] run return run function rauch:game/kits/teleporter/stats
execute as @s[scores={kit=7}] run return run function rauch:game/kits/tank/stats
execute as @s[scores={kit=8}] run return run function rauch:game/kits/pikka/stats
execute as @s[scores={kit=9}] run return run function rauch:game/kits/wokkaman/stats


tellraw @s [{text:"",color:"red"},"Error when trying to set stats for ",{"selector":"@s"},": not implemented for kit id ",{"score":{"name":"@s","objective":"kit"}}]
