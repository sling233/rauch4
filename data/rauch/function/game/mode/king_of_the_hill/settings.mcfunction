scoreboard players set Global gamestart 120

scoreboard players set @a[tag=game] heal 40
effect give @a[tag=game] minecraft:resistance 4 255 true
tag @a[tag=game] add can_respawn

scoreboard players set Global time_red 300000
scoreboard players set Global time_blue 300000