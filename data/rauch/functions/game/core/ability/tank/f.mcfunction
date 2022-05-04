scoreboard players set @s tank 80
function rauch:game/core/ui/bossbar/tank/visible
scoreboard players reset @s tank_damage_taken
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a

scoreboard players operation @s cool3 = @s cool3_target
