execute as @s[scores={kit=1},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/bolt/q
execute as @s[scores={kit=2,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/zarzahn/q
execute as @s[scores={kit=3,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/raucher/q
execute as @s[scores={kit=4,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/hacker/q
execute as @s[scores={kit=5,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/bowmaster/q
execute as @s[scores={kit=6,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/teleporter/q
execute as @s[scores={kit=7,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/tank/q
execute as @s[scores={kit=8,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/core/ability/flyer/q

execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s

clear @s minecraft:carrot_on_a_stick
function rauch:game/core/mechanics/weapon
