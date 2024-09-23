tp @s ~ ~ ~
execute at @s run particle minecraft:witch ~ ~1 ~ 0.2 0.4 0.2 1 120 force
execute at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.1 60 force
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~1 ~ 0.5
scoreboard players reset t_step temp
