scoreboard objectives add calc dummy
execute as @a[tag=game,scores={kit=9}] run scoreboard players operation Global calc += @s health
execute store result bossbar minecraft:wokkaman_health value run scoreboard players get Global calc
scoreboard objectives remove calc
