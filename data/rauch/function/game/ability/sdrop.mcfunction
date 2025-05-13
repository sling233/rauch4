clear @s minecraft:carrot_on_a_stick
function rauch:game/mechanics/weapon

execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s

execute if score Global gamestart matches 0.. run return 0


execute as @s[scores={kit=1},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/bolt/q
execute as @s[scores={kit=2,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/zarzahn/q
execute as @s[scores={kit=3,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/raucher/q
execute as @s[scores={kit=4,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/hacker/q
execute as @s[scores={kit=5,wark_charge=100000..},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/wark/q
execute as @s[scores={kit=6,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/teleporter/q
execute as @s[scores={kit=7,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/tank/q
execute as @s[scores={kit=8,cool2=0},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/flyer/q
execute as @s[scores={kit=9,wokkaman_rocket_count=4..},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/wokkaman/q
execute as @s[scores={kit=9,cool5=0},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/wokkaman/sq
