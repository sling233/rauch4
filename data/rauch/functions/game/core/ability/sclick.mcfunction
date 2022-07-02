execute as @s[scores={kit=1,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/bolt/r
execute as @s[scores={kit=2,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/zarzahn/r
execute as @s[scores={kit=3,cool1=0},predicate=rauch:skill] run function rauch:game/core/ability/raucher/r
execute as @s[scores={kit=4,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/hacker/r
execute as @s[scores={kit=5,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/wark/r
execute as @s[scores={kit=5,cool1=0},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/wark/sr
execute as @s[scores={kit=6,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/teleporter/r
execute as @s[scores={kit=7,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/tank/r
execute as @s[scores={kit=8,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/flyer/r

#execute as @s[scores={kit=3,projectileRNum=1..},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/raucher/sr


execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s
