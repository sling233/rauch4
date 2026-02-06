execute as @s[scores={kit=1}] run return run function rauch:game/kits/bolt/cooldowns
execute as @s[scores={kit=2}] run return run function rauch:game/kits/zarzahn/cooldowns
execute as @s[scores={kit=3}] run return run function rauch:game/kits/raucher/cooldowns
execute as @s[scores={kit=4}] run return run function rauch:game/kits/hacker/cooldowns
execute as @s[scores={kit=5}] run return run function rauch:game/kits/wark/cooldowns
execute as @s[scores={kit=6}] run return run function rauch:game/kits/teleporter/cooldowns
execute as @s[scores={kit=7}] run return run function rauch:game/kits/tank/cooldowns
execute as @s[scores={kit=8}] run return run function rauch:game/kits/pikka/cooldowns
execute as @s[scores={kit=9}] run return run function rauch:game/kits/wokkaman/cooldowns


execute unless score @s kit matches -2147483648..2147483647 run return run tellraw @a [{text:"",color:"red"},"Error when trying to set cooldowns, kit id unset"]
scoreboard players operation err temp = @s kit
tellraw @a [{text:"",color:"red"},"Error when trying to run set cooldowns, not implemented for kit id ",{"score":{"name":"err","objective":"temp"}}]
scoreboard players reset err temp