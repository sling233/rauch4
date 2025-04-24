scoreboard players set $y player_motion.api.launch 15000
function player_motion:api/launch_xyz

execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~
scoreboard players operation @s cool3 = @s cool3_target
