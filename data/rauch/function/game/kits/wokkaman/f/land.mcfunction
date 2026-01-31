tag @s remove flying
scoreboard players operation @s elytra = @s elytra_cooldown
function rauch:game/kits/set_armor_body
execute at @s run playsound minecraft:block.chain.break master @s
function rauch:game/ui/bossbar/elytra/visible
