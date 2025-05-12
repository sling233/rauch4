# off, turn on
execute unless score %enable_wokkaman_selectability global matches 1 run scoreboard players set %enable_wokkaman_selectability global 2
execute if score %enable_wokkaman_selectability global matches 2 run tellraw @a [{selector:"@s"},{"text":" Enabled Wokkaman Selectability","color":"green"}]
# on, turn off
execute if score %enable_wokkaman_selectability global matches 1 run tellraw @a [{selector:"@s"},{"text":" Disabled Wokkaman Selectability","color":"green"}]
execute if score %enable_wokkaman_selectability global matches 1 run execute as @a[tag=lobby,scores={kit=9}] run tellraw @s {text:"Wokkaman Selectability has been disabled, your kit has been set to Bolt",color:"red"}
execute if score %enable_wokkaman_selectability global matches 1 run execute as @a[tag=lobby,scores={kit=9}] at @s run playsound minecraft:entity.puffer_fish.blow_out
execute if score %enable_wokkaman_selectability global matches 1 run execute as @a[tag=lobby,scores={kit=9}] run clear @s minecraft:written_book[item_name={"color":"yellow","text":"Kit Selector/Settings"}]
execute if score %enable_wokkaman_selectability global matches 1 run execute as @a[tag=lobby,scores={kit=9}] run scoreboard players set @s kit 1
execute if score %enable_wokkaman_selectability global matches 1 run scoreboard players set %enable_wokkaman_selectability global 0

# actually turn on
execute if score %enable_wokkaman_selectability global matches 2 run scoreboard players set %enable_wokkaman_selectability global 1


playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
