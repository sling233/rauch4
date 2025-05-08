scoreboard players set %enable_wokkaman_selectability global 0
playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
tellraw @a [{selector:"@s"},{"text":" Disabled Wokkaman Selectability","color":"green"}]
execute as @a[tag=lobby,scores={kit=9}] run tellraw @s {text:"Wokkaman Selectability has been disabled, your kit has been set to Bolt",color:"red"}
execute as @a[tag=lobby,scores={kit=9}] at @s run playsound minecraft:entity.puffer_fish.blow_out
execute as @a[tag=lobby,scores={kit=9}] run scoreboard players set @s kit 1
clear @a[tag=lobby] minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]
