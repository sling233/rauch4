
execute as @s[scores={kit=1}] run return run function rauch:game/kits/bolt/stats
execute as @s[scores={kit=2}] run return run function rauch:game/kits/zarzahn/stats
execute as @s[scores={kit=3}] run return run function rauch:game/kits/raucher/stats
execute as @s[scores={kit=4}] run return run function rauch:game/kits/hacker/stats
execute as @s[scores={kit=5}] run return run function rauch:game/kits/wark/stats
execute as @s[scores={kit=6}] run return run function rauch:game/kits/teleporter/stats
execute as @s[scores={kit=7}] run return run function rauch:game/kits/tank/stats
execute as @s[scores={kit=8}] run return run function rauch:game/kits/pikka/stats
execute as @s[scores={kit=9}] run return run function rauch:game/kits/wokkaman/stats


execute unless score @s kit matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to set stats, kit id unset"]
scoreboard players operation err temp = @s kit
tellraw @a [{text:"",color:"red"},"Error when trying to set stats, not implemented for kit id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp