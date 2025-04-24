scoreboard players set $strength player_motion.api.launch 15000
execute rotated as @s run function player_motion:api/launch_looking

execute at @s run playsound minecraft:entity.ender_dragon.flap master @a
execute at @s run particle minecraft:cloud ~ ~0.3 ~ 0.2 0.2 0.2 0.3 60 force
scoreboard players operation @s cool1 = @s cool1_target
