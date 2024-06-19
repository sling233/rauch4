execute as @s[scores={adminsetting=1}] run scoreboard players set Global mode 0
execute as @s[scores={adminsetting=2}] run scoreboard players set Global mode 1
execute as @s[scores={adminsetting=3}] run scoreboard players set Global mode 2
execute as @s[scores={adminsetting=4}] run scoreboard players set Global mode 3
execute as @s[scores={adminsetting=5}] run scoreboard players set Global mode 4
execute as @s[scores={adminsetting=6}] run scoreboard players set Global mode 5
execute as @s[scores={adminsetting=100}] run data modify storage map_data active set from storage map_data maps[0]
execute as @s[scores={adminsetting=101}] run data modify storage map_data active set from storage map_data maps[1]
execute as @s[scores={adminsetting=102}] run data modify storage map_data active set from storage map_data maps[2]
execute as @s[scores={adminsetting=103}] run data modify storage map_data active set from storage map_data maps[3]
execute as @s[scores={adminsetting=104}] run data modify storage map_data active set from storage map_data maps[4]
execute as @s[scores={adminsetting=105}] run data modify storage map_data active set from storage map_data maps[5]
execute as @s[scores={adminsetting=106}] run data modify storage map_data active set from storage map_data maps[6]
execute as @s[scores={adminsetting=107}] run data modify storage map_data active set from storage map_data maps[7]

#wenn es ein map select war
execute as @s[scores={adminsetting=100..107}] run tellraw @a [{"text":"Selected Map: ","color":"green"},{"nbt":"active.name","storage":"map_data","interpret":true,"color":"light_purple"}]

#wenn es ein mode select war
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 0 run tellraw @a [{"text":"Mode: Deathmatch","color":"green"}]
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 1 run tellraw @a [{"text":"Mode: King of the Hill","color":"green"}]
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 2 run tellraw @a [{"text":"Mode: Respawn Deathmatch","color":"green"}]
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 3 run tellraw @a [{"text":"Mode: Testing Mode","color":"green"}]
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 4 run tellraw @a [{"text":"Mode: Capture The Flag","color":"green"}]


scoreboard players reset @s adminsetting
clear @a minecraft:written_book[item_name='{"color":"yellow","text":"Settings"}']

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
