execute as @s[scores={cool3=0,kit=1},predicate=rauch:skill] run function rauch:game/ability/bolt/f
execute as @s[scores={kit=2,zarzahn_f=1..},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/zarzahn/f
execute as @s[scores={cool3=0,kit=2},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/zarzahn/sf
execute as @s[scores={kit=3,projectileRNum=1..},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/raucher/f
execute as @s[scores={kit=3,projectileRNum=1..},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/raucher/sf
execute as @s[scores={hacker_charges=1..,kit=4},predicate=rauch:skill] run function rauch:game/ability/hacker/f
execute as @s[scores={cool3=0,kit=5},predicate=rauch:skill,predicate=!rauch:sneak] run function rauch:game/ability/wark/f
execute as @s[scores={cool3=0,kit=6},predicate=rauch:skill] run function rauch:game/ability/teleporter/f
execute as @s[scores={cool3=0,kit=7},predicate=rauch:skill] run function rauch:game/ability/tank/f
execute as @s[scores={cool3=0,kit=8},predicate=rauch:skill] run function rauch:game/ability/flyer/f
execute as @s[scores={cool3=0,kit=9},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/wokkaman/f
execute as @s[scores={cool3=0,kit=9},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/ability/wokkaman/sf


execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s


clear @s minecraft:carrot_on_a_stick
function rauch:game/mechanics/weapon
