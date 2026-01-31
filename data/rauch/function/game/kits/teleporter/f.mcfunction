scoreboard players reset t_step temp
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a
execute at @s run particle minecraft:dust{color:[1.0,0.0,1.0],scale:1} ~ ~1 ~ 0.3 0.5 0.3 1 100 force

execute at @s positioned ~ ~1.6 ~ run function rauch:game/kits/teleporter/f/move
scoreboard players operation @s cool3 = @s cool3_target
