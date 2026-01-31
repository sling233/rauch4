execute as @s[scores={kit=1}] run return run function rauch:game/kits/bolt/tick
execute as @s[scores={kit=2}] run return run function rauch:game/kits/zarzahn/tick
execute as @s[scores={kit=3}] run return run function rauch:game/kits/raucher/tick
execute as @s[scores={kit=4}] run return run function rauch:game/kits/hacker/tick
execute as @s[scores={kit=5}] run return run function rauch:game/kits/wark/tick
execute as @s[scores={kit=6}] run return run function rauch:game/kits/teleporter/tick
execute as @s[scores={kit=7}] run return run function rauch:game/kits/tank/tick
execute as @s[scores={kit=8}] run return run function rauch:game/kits/flyer/tick
execute as @s[scores={kit=9}] run return run function rauch:game/kits/wokkaman/tick


tellraw @s ["Error when trying to run tick function for ",{"selector":"@s"},": not implemented for kit id ",{"score":{"name":"@s","objective":"kit"}}]
