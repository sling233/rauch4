effect give @s minecraft:levitation 1 80 true
execute at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~
scoreboard players set @s flyerFSchedule -3
scoreboard players operation @s cool3 = @s cool3_target
