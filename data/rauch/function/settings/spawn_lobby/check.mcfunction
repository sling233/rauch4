execute store result score t_posy temp run data get entity @s Pos[1]

execute if score t_posy temp matches 260.. run tellraw @s [{"text":"The lobby is too tall to spawn where you are standing right now (68x61x64). Please move to a valid location (y259 or less) and try again."}]
execute if score t_posy temp matches ..259 run function rauch:settings/spawn_lobby/spawn

scoreboard players reset t_posy temp
