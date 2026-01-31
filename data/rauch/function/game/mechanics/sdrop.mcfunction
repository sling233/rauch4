clear @s minecraft:carrot_on_a_stick
function rauch:game/kits/set_weapon

execute as @s[predicate=rauch:hack] run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:hack] run playsound minecraft:block.chain.break master @s
execute as @s[predicate=rauch:stun] run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute as @s[predicate=rauch:stun] run playsound minecraft:block.chain.break master @s

execute if score Global gamestart matches 0.. run return 0

execute unless predicate rauch:sneak run function rauch:game/kits/q
execute if predicate rauch:sneak run function rauch:game/kits/sq