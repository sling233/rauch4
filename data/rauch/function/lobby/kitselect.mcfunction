execute as @s[scores={kitselect=1..8}] run scoreboard players operation @s kit = @s kitselect
execute as @s[scores={kitselect=100}] run scoreboard players set @s hide_ambient_particles 1
execute as @s[scores={kitselect=101}] run scoreboard players set @s hide_ambient_particles 0
execute as @s[scores={kitselect=110}] run scoreboard players set @s actionbar_design 0
execute as @s[scores={kitselect=111}] run scoreboard players set @s actionbar_design 1
execute as @s[scores={kitselect=112}] run scoreboard players set @s actionbar_design 2
execute as @s[scores={kitselect=113}] run scoreboard players set @s actionbar_design 3
execute as @s[scores={kitselect=114}] run scoreboard players set @s actionbar_design 4
#execute as @s[scores={kitselect=103}] run scoreboard players set @s particleDensity 0
#execute as @s[scores={kitselect=104}] run scoreboard players set @s particleDensity 1
execute as @s[scores={kitselect=120}] run scoreboard players set @s night_vision_accessibility 0
execute as @s[scores={kitselect=121}] run scoreboard players set @s night_vision_accessibility 1
execute as @s[scores={kitselect=122}] run scoreboard players set @s night_vision_accessibility 2

clear @s minecraft:written_book[item_name='{"text":"Kit Selector/Settings","color":"yellow"}']
scoreboard players reset @s kitselect

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
