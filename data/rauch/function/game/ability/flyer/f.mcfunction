#effect give @s minecraft:levitation 1 80 true
# execute unless score @s flyerQSchedule matches ..-1 run attribute @s minecraft:gravity base set -0.72
execute at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~

scoreboard players set $y player_motion.api.launch 15000
execute unless score @s flyerQSchedule matches ..-1 run function player_motion:api/launch_xyz
scoreboard players set @s flyerFSchedule -3

scoreboard players operation @s cool3 = @s cool3_target
