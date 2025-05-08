scoreboard players set %enable_launchpads_in_lobby global 1
playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @a [{selector:"@s"},{"text":" Enabled Launchpads in Lobby","color":"green"}]
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]