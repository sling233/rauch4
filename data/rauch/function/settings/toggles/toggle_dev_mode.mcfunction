# off, turn on
execute unless score %dev_mode global matches 1 run scoreboard players set %dev_mode global 2
execute if score %dev_mode global matches 2 run tellraw @a [{selector:"@s"},{"text":" enabled Dev Mode","color":"green"}]
execute if score %dev_mode global matches 2 run gamerule send_command_feedback true
# on, turn off
execute if score %dev_mode global matches 1 run tellraw @a [{selector:"@s"},{"text":" disabled Dev Mode","color":"green"}]
execute if score %dev_mode global matches 1 run gamerule send_command_feedback false
execute if score %dev_mode global matches 1 run scoreboard players set %dev_mode global 0

# actually turn on
execute if score %dev_mode global matches 2 run scoreboard players set %dev_mode global 1


playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
