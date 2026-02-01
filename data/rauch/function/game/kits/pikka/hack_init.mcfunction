execute unless score @s elytra matches 1.. run function rauch:game/ui/bossbar/elytra/visible
execute unless score @s elytra matches 1.. run scoreboard players set @s elytra 1

execute at @s[tag=flying] run playsound minecraft:block.chain.break master @s
tag @s[tag=flying] remove flying

execute as @s[tag=fast] run attribute @s minecraft:attack_damage modifier remove flyer_fast
execute as @s[tag=fast] run attribute @s minecraft:entity_interaction_range modifier remove flyer_fast_range
function rauch:game/ui/bossbar/speed/invisible
tag @s[tag=fast] remove fast

function rauch:game/kits/set_armor_body