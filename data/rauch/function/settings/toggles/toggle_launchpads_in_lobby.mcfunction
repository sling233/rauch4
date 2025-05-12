# off, turn on
execute unless score %enable_launchpads_in_lobby global matches 1 run scoreboard players set %enable_launchpads_in_lobby global 2
execute if score %enable_launchpads_in_lobby global matches 2 run tellraw @a [{selector:"@s"},{"text":" Enabled Launchpads in Lobby","color":"green"}]
# on, turn off
execute if score %enable_launchpads_in_lobby global matches 1 run tellraw @a [{selector:"@s"},{"text":" Disabled Launchpads in Lobby","color":"green"}]
execute if score %enable_launchpads_in_lobby global matches 1 run scoreboard players set %enable_launchpads_in_lobby global 0

# actually turn on
execute if score %enable_launchpads_in_lobby global matches 2 run scoreboard players set %enable_launchpads_in_lobby global 1


playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
