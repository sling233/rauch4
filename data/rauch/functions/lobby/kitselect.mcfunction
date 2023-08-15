execute as @s[scores={kitselect=1..8}] run scoreboard players operation @s kit = @s kitselect
execute as @s[scores={kitselect=100}] run scoreboard players set @s particle_ambient 0
execute as @s[scores={kitselect=101}] run scoreboard players set @s particle_ambient 1
execute as @s[scores={kitselect=103}] run scoreboard players set @s particleDensity 0
execute as @s[scores={kitselect=104}] run scoreboard players set @s particleDensity 1
execute as @s[scores={kitselect=105}] run execute at @e[type=armor_stand,tag=main] run tp @s ~ ~-20 ~

clear @s minecraft:written_book{title:"Kit Selector / Settings"}
scoreboard players reset @s kitselect

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
