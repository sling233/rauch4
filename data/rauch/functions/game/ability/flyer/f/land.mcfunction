tag @s remove flying
scoreboard players operation @s elytra = @s elytra_cooldown
function rauch:game/mechanics/armor
execute at @s run playsound minecraft:block.chain.break master @s
function rauch:game/ui/bossbar/speed/invisible
function rauch:game/ui/bossbar/elytra/visible
execute as @s[tag=fast] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-3
execute as @s[tag=fast] run attribute @s minecraft:player.entity_interaction_range modifier remove 3-0-0-0-1
tag @s remove fast
