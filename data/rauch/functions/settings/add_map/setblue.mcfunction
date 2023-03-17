scoreboard objectives add t_posx dummy
scoreboard objectives add t_posy dummy
scoreboard objectives add t_posz dummy
execute store result score Global t_posx run data get entity @s Pos[0]
execute store result score Global t_posy run data get entity @s Pos[1]
execute store result score Global t_posz run data get entity @s Pos[2]
scoreboard players operation Global t_posx *= Global 10
scoreboard players operation Global t_posy *= Global 10
scoreboard players operation Global t_posz *= Global 10
scoreboard players add Global t_posx 5
scoreboard players add Global t_posy 200
scoreboard players add Global t_posz 5

data modify storage map_data maps[0].blue set value [0d,0d,0d]
execute store result storage map_data maps[0].blue[0] double 0.1 run scoreboard players get Global t_posx
execute store result storage map_data maps[0].blue[1] double 0.1 run scoreboard players get Global t_posy
execute store result storage map_data maps[0].blue[2] double 0.1 run scoreboard players get Global t_posz

#tellraw @s {"text":"----------------------------------------------------", "color":"yellow"}
tellraw @s [{"text":"Blue Spawn set to: ", "color":"yellow"},{"nbt":"maps[0].blue[0]","storage":"map_data","color":"light_purple"},{"text":", "},{"nbt":"maps[0].blue[1]","storage":"map_data","color":"light_purple"},{"text":", "},{"nbt":"maps[0].blue[2]","storage":"map_data","color":"light_purple"}]
#tellraw @s {"text":"----------------------------------------------------", "color":"yellow"}
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
function rauch:settings/add_map/givebluespawn

scoreboard objectives remove t_posx
scoreboard objectives remove t_posy
scoreboard objectives remove t_posz
scoreboard players reset @s click
