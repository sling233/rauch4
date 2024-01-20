effect give @s minecraft:levitation 2 255 true
scoreboard players set @s wok_hover_schedule -30
execute at @s run playsound minecraft:block.enchantment_table.use master @a
tag @s remove wok_f_air
#execute at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~

#scoreboard players operation @s cool3 = @s cool3_target
