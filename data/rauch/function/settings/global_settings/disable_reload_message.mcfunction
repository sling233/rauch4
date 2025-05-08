scoreboard players set %reload_message_disabled global 1
playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @s {"text":"Disabled Reload Message","color":"green"}
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]