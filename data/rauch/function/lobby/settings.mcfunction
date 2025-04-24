execute as @s[scores={adminsetting=1}] run scoreboard players set Global mode 0
execute as @s[scores={adminsetting=2}] run scoreboard players set Global mode 1
execute as @s[scores={adminsetting=3}] run scoreboard players set Global mode 2
execute as @s[scores={adminsetting=4}] run scoreboard players set Global mode 3
execute as @s[scores={adminsetting=5}] run scoreboard players set Global mode 4
execute as @s[scores={adminsetting=6}] run scoreboard players set Global mode 5

#wenn es ein mode select war
execute if score @s adminsetting matches 1 run tellraw @a [{"selector":"@s"},{"text":" set mode to ","color":"green"},\
{"text":"Deathmatch ","color":"light_purple","hover_event":{"action":"show_text","value":[\
{"text":"Eliminate the other team. Simple as that."}]}},\
{"text":"(hover for info)","color":"gray","italic":true}]

execute if score @s adminsetting matches 2 run tellraw @a [{"selector":"@s"},{"text":" set mode to ","color":"green"},\
{"text":"King of the Hill ","color":"light_purple","hover_event":{"action":"show_text","value":[\
{"text":"Control the center to lose less points than the enemy team. First team with no points left loses."}]}},\
{"text":"(hover for info)","color":"gray","italic":true}]

execute if score @s adminsetting matches 3 run tellraw @a [{"selector":"@s"},{"text":" set mode to ","color":"green"},\
{"text":"Respawn Deathmatch ","color":"light_purple","hover_event":{"action":"show_text","value":[\
{"text":"The first team to get 20 kills wins."}]}},\
{"text":"(hover for info)","color":"gray","italic":true}]

execute if score @s adminsetting matches 4 run tellraw @a [{"selector":"@s"},{"text":" set mode to ","color":"green"},\
{"text":"Testing Mode ","color":"light_purple","hover_event":{"action":"show_text","value":[\
{"text":"Mode for development and testing. No ability cooldown, instant respawn and game start."}]}},\
{"text":"(hover for info)","color":"gray","italic":true}]

execute if score @s adminsetting matches 5 run tellraw @a [{"selector":"@s"},{"text":" set mode to ","color":"green"},\
{"text":"Capture The Flag ","color":"light_purple","hover_event":{"action":"show_text","value":[\
{"text":"Transport the Flag to the Enemy Base to get points. The team with the most points after 3:00 or that reaches 5 points first wins.\n\
In case of a tie, the team that has transported the flag the closest to the enemy base wins. If the losing team holds the flag, they are given \
a chance to score a point to win (overtime), otherwise they lose."}]}},\
{"text":"(hover for info)","color":"gray","italic":true}]

execute if score @s adminsetting matches 6 run tellraw @a [{"selector":"@s"},{"text":" set mode to ","color":"green"},\
{"text":"Wokkaman","color":"light_purple","hover_event":{"action":"show_text","value":[\
{"text":"Work In Progress, for fun mode\n As of now, the player who manually selects team red will become the Wokkaman, an intentionally \
overpowered class. The goal of the blue team is to kill the Wokkaman, the Wokkaman player just tries to get as many kills as they can, \
they cannot \"win\". The game ends when the Wokkaman is killed. Multiple players can be a Wokkaman, as of now about 3 blue players \
per wokkaman seems fun."}]}},\
{"text":"<-(hover for info)","color":"gray","italic":true}]


scoreboard players reset @s adminsetting
clear @a minecraft:written_book[item_name={"color":"yellow","text":"Settings"}]

execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
