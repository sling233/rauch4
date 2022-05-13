execute as @s[scores={cool3=0,kit=1},predicate=!rauch:hack,predicate=!rauch:stun] run function rauch:game/core/ability/bolt/f
execute as @s[scores={kit=2,zarzahn_f=1..},predicate=!rauch:sneak,predicate=!rauch:hack,predicate=!rauch:stun] run function rauch:game/core/ability/zarzahn/f
execute as @s[scores={cool3=0,kit=2},predicate=rauch:sneak,predicate=!rauch:hack,predicate=!rauch:stun] run function rauch:game/core/ability/zarzahn/sf
execute as @s[scores={kit=3,projectileRNum=1..},predicate=!rauch:sneak,predicate=!rauch:hack,predicate=!rauch:stun] run function rauch:game/core/ability/raucher/f
execute as @s[scores={kit=3,projectileRNum=1..},predicate=rauch:sneak,predicate=!rauch:hack,predicate=!rauch:stun] run function rauch:game/core/ability/raucher/sf
execute as @s[scores={cool3=0,kit=4},predicate=!rauch:hack,predicate=!rauch:stun] run function rauch:game/core/ability/hacker/f
execute as @s[scores={cool3=0,kit=6},predicate=!rauch:hack,predicate=!rauch:stun] run function rauch:game/core/ability/teleporter/f
execute as @s[scores={cool3=0,kit=7},predicate=!rauch:hack,predicate=!rauch:stun] run function rauch:game/core/ability/tank/f
execute as @s[scores={cool3=0,kit=8},predicate=!rauch:hack,predicate=!rauch:stun] run function rauch:game/core/ability/flyer/f


execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s


clear @s minecraft:carrot_on_a_stick
function rauch:game/core/mechanics/weapon
