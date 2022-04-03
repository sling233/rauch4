execute as @s[scores={adminsetting=1}] run scoreboard players set Global mode 0
execute as @s[scores={adminsetting=2}] run scoreboard players set Global mode 1
execute as @s[scores={adminsetting=3}] run scoreboard players set Global mode 2
execute as @s[scores={adminsetting=4}] run scoreboard players set Global mode 3
execute as @s[scores={adminsetting=5}] run scoreboard players set Global mode 4
execute as @s[scores={adminsetting=100}] run scoreboard players set Global mapId 0
execute as @s[scores={adminsetting=101}] run scoreboard players set Global mapId 1
execute as @s[scores={adminsetting=102}] run scoreboard players set Global mapId 2
execute as @s[scores={adminsetting=103}] run scoreboard players set Global mapId 3
execute as @s[scores={adminsetting=104}] run scoreboard players set Global mapId 4
execute as @s[scores={adminsetting=105}] run scoreboard players set Global mapId 5
execute as @s[scores={adminsetting=106}] run scoreboard players set Global mapId 6
execute as @s[scores={adminsetting=107}] run scoreboard players set Global mapId 7

#wenn es ein map select war
execute as @s[scores={adminsetting=100..107}] run tag @e[type=armor_stand,tag=map,tag=active] remove active
execute as @s[scores={adminsetting=100..107}] run execute as @e[type=armor_stand,tag=map,tag=root] if score @s mapId = Global mapId run tag @s add active
execute as @s[scores={adminsetting=100..107}] run tellraw @a [{"text":"Selected Map: ","color":"green"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=map,tag=root,tag=active,limit=1]","interpret":true,"color":"light_purple"}]

#wenn es ein mode select war
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 0 run tellraw @a [{"text":"Mode: Deathmatch","color":"green"}]
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 1 run tellraw @a [{"text":"Mode: King of the Hill","color":"green"}]
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 2 run tellraw @a [{"text":"Mode: Respawn Deathmatch","color":"green"}]
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 3 run tellraw @a [{"text":"Mode: Testing Mode","color":"green"}]
execute as @s[scores={adminsetting=1..5}] if score Global mode matches 4 run tellraw @a [{"text":"Mode: Capture The Flag","color":"green"}]


scoreboard players reset @s adminsetting
function rauch:lobby/ui/giveadminbook

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
