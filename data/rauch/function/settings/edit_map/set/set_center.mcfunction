scoreboard players set 10 const 10
execute store result score t_posx temp run data get entity @s Pos[0]
execute store result score t_posy temp run data get entity @s Pos[1]
execute store result score t_posz temp run data get entity @s Pos[2]
scoreboard players operation t_posx temp *= 10 const
scoreboard players operation t_posy temp *= 10 const
scoreboard players operation t_posz temp *= 10 const
scoreboard players add t_posx temp 5
scoreboard players add t_posy temp 200
scoreboard players add t_posz temp 5

data modify storage map_data edit_buffer.center set value [0d,0d,0d]
execute store result storage map_data edit_buffer.center[0] double 0.1 run scoreboard players get t_posx temp
execute store result storage map_data edit_buffer.center[1] double 0.1 run scoreboard players get t_posy temp
execute store result storage map_data edit_buffer.center[2] double 0.1 run scoreboard players get t_posz temp

#tellraw @s {"text":"----------------------------------------------------", "color":"yellow"}
tellraw @s [{"text":"Center location set to: ", "color":"yellow"},{"nbt":"edit_buffer.center[0]","storage":"map_data","color":"light_purple"},{"text":", "},{"nbt":"edit_buffer.center[1]","storage":"map_data","color":"light_purple"},{"text":", "},{"nbt":"edit_buffer.center[2]","storage":"map_data","color":"light_purple"}]
#tellraw @s {"text":"----------------------------------------------------", "color":"yellow"}
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
function rauch:settings/edit_map/give/give_center


scoreboard players reset t_posx temp
scoreboard players reset t_posy temp
scoreboard players reset t_posz temp
scoreboard players reset @s click
