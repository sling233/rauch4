# off, turn on
execute unless score %reload_message_disabled global matches 1 run scoreboard players set %reload_message_disabled global 2
execute if score %reload_message_disabled global matches 2 run tellraw @a [{selector:"@s"},{"text":" Disabled Reload Message","color":"green"}]
# on, turn off
execute if score %reload_message_disabled global matches 1 run tellraw @a [{selector:"@s"},{"text":" Enabled Reload Message","color":"green"}]
execute if score %reload_message_disabled global matches 1 run scoreboard players set %reload_message_disabled global 0

# actually turn on
execute if score %reload_message_disabled global matches 2 run scoreboard players set %reload_message_disabled global 1


playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
