scoreboard players set @s tank 80
function rauch:game/ui/bossbar/tank/visible
scoreboard players reset @s tank_damage_dealt
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a

scoreboard players operation @s cool3 = @s cool3_target
