scoreboard players set $y player_motion.api.launch 11000
function player_motion:api/launch_xyz

execute at @s run playsound minecraft:entity.warden.attack_impact master @a
scoreboard players operation @s cool3 = @s cool3_target
