execute as @s[scores={kit=1,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/class/bolt/r
execute as @s[scores={kit=2,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/class/zarzahn/r
execute as @s[scores={kit=3,projectileRNum=1..},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/class/raucher/r
execute as @s[scores={kit=4,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/class/hacker/r
execute as @s[scores={kit=5,projectileRNum=1..},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/class/bowmaster/r
execute as @s[scores={kit=6,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/class/teleporter/r
execute as @s[scores={kit=7,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/class/tank/r
execute as @s[scores={kit=8,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/class/flyer/r

execute as @s[scores={kit=3,projectileRNum=1..},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/class/raucher/sr


execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot activate your skill!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot activate your skill!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s
