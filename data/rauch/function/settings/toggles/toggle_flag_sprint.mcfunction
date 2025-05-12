# off, turn on
execute unless score %enable_flag_sprint global matches 1 run scoreboard players set %enable_flag_sprint global 2
execute if score %enable_flag_sprint global matches 2 run tellraw @a [{selector:"@s"},{"text":" Enabled Flag Sprint","color":"green"}]
# on, turn off
execute if score %enable_flag_sprint global matches 1 run tellraw @a [{selector:"@s"},{"text":" Disabled Flag Sprint","color":"green"}]
execute if score %enable_flag_sprint global matches 1 run scoreboard players set %enable_flag_sprint global 0

# actually turn on
execute if score %enable_flag_sprint global matches 2 run scoreboard players set %enable_flag_sprint global 1


playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
