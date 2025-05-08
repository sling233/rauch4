scoreboard players set %enable_flag_sprint global 0
playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @a [{selector:"@s"},{"text":" Disabled Flag Sprint","color":"green"}]
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]