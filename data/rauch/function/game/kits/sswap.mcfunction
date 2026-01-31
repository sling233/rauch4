clear @s minecraft:carrot_on_a_stick
function rauch:game/mechanics/weapon

execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s

execute if score Global gamestart matches 0.. run return 0


execute as @s[scores={cool3=0,kit=1},predicate=rauch:skill] run function rauch:game/kits/bolt/f
execute as @s[scores={kit=2},predicate=!rauch:sneak,predicate=rauch:skill] run function rauch:game/kits/zarzahn/f
execute as @s[scores={cool3=0,kit=2},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/kits/zarzahn/sf
execute as @s[scores={kit=3,cool3=0},predicate=rauch:skill] run function rauch:game/kits/raucher/f
execute as @s[scores={hacker_charges=1..,kit=4},predicate=rauch:skill] run function rauch:game/kits/hacker/f
execute as @s[scores={cool3=0,kit=5},predicate=rauch:skill,predicate=!rauch:sneak] run function rauch:game/kits/wark/f
execute as @s[scores={cool3=0,kit=6},predicate=rauch:skill] run function rauch:game/kits/teleporter/f
execute as @s[scores={cool3=0,kit=7},predicate=rauch:skill] run function rauch:game/kits/tank/f
execute as @s[scores={cool3=0,kit=8},predicate=rauch:skill] run function rauch:game/kits/flyer/f
# wokkaman
execute as @s[scores={kit=9},predicate=!rauch:sneak,predicate=rauch:skill] unless score @s fly matches 1.. unless predicate rauch:flying run function rauch:game/kits/wokkaman/f
execute as @s[scores={cool6=0,kit=9},predicate=rauch:sneak,predicate=rauch:skill] run function rauch:game/kits/wokkaman/sf
execute as @s[scores={kit=9,fly=1..},predicate=rauch:skill] run function rauch:game/kits/wokkaman/ff
