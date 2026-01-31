#effect give @s minecraft:levitation 1 80 true
attribute @s minecraft:gravity base set -0.72
execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~
scoreboard players set @s flyerFSchedule -3
scoreboard players operation @s cool3 = @s cool3_target