execute unless score @s elytra matches 1.. run function rauch:game/ui/bossbar/elytra/visible
execute unless score @s elytra matches 1.. run scoreboard players set @s elytra 1

tag @s remove flying
execute at @s run playsound minecraft:block.chain.break master @s
function rauch:game/ui/bossbar/elytra/visible

function rauch:game/kits/set_armor_body
