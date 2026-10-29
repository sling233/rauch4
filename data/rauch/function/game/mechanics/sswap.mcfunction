item replace entity @s weapon.offhand with air
#function rauch:game/kits/weapon

execute if function rauch:game/mechanics/is_hacked run tellraw @s {"text":"You are hacked and cannot use your abilities!","color":"red"}
execute if function rauch:game/mechanics/is_hacked run playsound minecraft:block.chain.break master @s
execute if function rauch:game/mechanics/is_stunned run tellraw @s {"text":"You are stunned and cannot use your abilities!","color":"red"}
execute if function rauch:game/mechanics/is_stunned run playsound minecraft:block.chain.break master @s

execute unless predicate rauch:skill run return 1
execute if score Global gamestart matches 0.. run return 2

execute unless predicate rauch:sneak run function rauch:game/kits/f
execute if predicate rauch:sneak run function rauch:game/kits/sf