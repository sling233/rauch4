execute as @s[scores={kit=1,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/bolt/r
execute as @s[scores={kit=2,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/zarzahn/r
execute as @s[scores={kit=3,cool1=0},predicate=rauch:skill] run function rauch:game/ability/raucher/r
execute as @s[scores={kit=4,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/hacker/r
execute as @s[scores={kit=5,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/wark/r
execute as @s[scores={kit=5,cool1=0},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/wark/sr
execute as @s[scores={kit=6,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/teleporter/r
execute as @s[scores={kit=7,tank_damage_taken=80..},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/tank/r
execute as @s[scores={kit=8,cool1=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/flyer/r

execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s
