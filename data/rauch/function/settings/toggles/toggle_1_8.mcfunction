# off, turn on
execute unless score %emulate_1_8 global matches 1 run scoreboard players set %emulate_1_8 global 2
execute if score %emulate_1_8 global matches 2 run tellraw @a [{selector:"@s"},{"text":" enabled Emulate 1.8 Combat","color":"green"}]
# on, turn off
execute if score %emulate_1_8 global matches 1 run tellraw @a [{selector:"@s"},{"text":" disabled Emulate 1.8 Combat","color":"green"}]
execute if score %emulate_1_8 global matches 1 run scoreboard players set %emulate_1_8 global 0

# actually turn on
execute if score %emulate_1_8 global matches 2 run scoreboard players set %emulate_1_8 global 1


playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
