tag @s remove flying
scoreboard players operation @s elytra = @s elytra_cooldown
function rauch:game/mechanics/armor
execute at @s run playsound minecraft:block.chain.break master @s
function rauch:game/ui/bossbar/speed/invisible
function rauch:game/ui/bossbar/elytra/visible
execute as @s[tag=fast] run attribute @s minecraft:attack_damage modifier remove flyer_fast
execute as @s[tag=fast] run attribute @s minecraft:entity_interaction_range modifier remove flyer_fast_range
tag @s remove fast
