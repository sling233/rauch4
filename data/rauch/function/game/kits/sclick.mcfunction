execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s

execute if score Global gamestart matches 0.. run return 0


execute as @s[scores={kit=1,cool1=0},predicate=rauch:skill] run function rauch:game/kits/bolt/r
execute as @s[scores={kit=2,cool1=0},predicate=rauch:skill] run function rauch:game/kits/zarzahn/r
execute as @s[scores={kit=3,projectileRNum=1..},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/kits/raucher/r
execute as @s[scores={kit=3,projectileRNum=1..},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/kits/raucher/sr
execute as @s[scores={kit=4,cool1=0},predicate=rauch:skill] run function rauch:game/kits/hacker/r
execute as @s[scores={kit=5,cool1=0},predicate=rauch:skill] run function rauch:game/kits/wark/r
#execute as @s[scores={kit=5,cool1=0},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/kits/wark/sr
execute as @s[scores={kit=6,cool1=0},predicate=rauch:skill] run function rauch:game/kits/teleporter/r
execute as @s[scores={kit=7},predicate=rauch:skill] run function rauch:game/kits/tank/r
execute as @s[scores={kit=8,cool1=0},predicate=rauch:skill] run function rauch:game/kits/flyer/r
#wokkaman
execute at @s[scores={kit=9},predicate=!rauch:sneak,predicate=rauch:skill] as @e[type=marker,tag=wok_hook] if score @s pnum = @p pnum run function rauch:game/kits/wokkaman/r/buffer_hook_invert
execute as @s[scores={kit=9,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] unless score @s zarzahn_hooking matches 1.. run function rauch:game/kits/wokkaman/r
execute as @s[scores={kit=9,zarzahn_hooking=1..},tag=!inverted_hook,predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/kits/wokkaman/hr
execute as @s[scores={kit=9,cool4=0},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/kits/wokkaman/sr
