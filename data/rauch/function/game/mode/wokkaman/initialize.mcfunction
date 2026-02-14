execute as @a[team=Red,tag=game] run function rauch:game/framework/tp_to_red_spawn
execute as @a[team=Blue,tag=game] run function rauch:game/framework/tp_to_blue_spawn
execute as @a[tag=game] at @s run spawnpoint @s ~ ~ ~


scoreboard players set Global wok_time 0
scoreboard players set Global wok_kills 0

tag @a[team=Red] add wokkaman

# bossbar (displays collective health of all wokkamen)
scoreboard objectives add calc dummy
scoreboard objectives add t_health dummy
execute as @a[tag=game,tag=wokkaman] store result score @s t_health run attribute @s minecraft:max_health get
execute as @a[tag=game,tag=wokkaman] run scoreboard players operation Global calc += @s t_health
# execute as @a[tag=game,tag=wokkaman] run tellraw @s [{"score":{"name":"Global","objective":"calc"}}]
execute store result bossbar minecraft:wokkaman_health max run scoreboard players get Global calc
bossbar set minecraft:wokkaman_health players @a[tag=game]

scoreboard objectives remove calc
scoreboard objectives remove t_health
bossbar set wokkaman_health visible true


execute as @a[tag=wokkaman] run tellraw @a[tag=game] [{"text":"<","color":"white"},{"selector":"@s"},{"text":"> ","color":"white"},{"text":"try kill me nubs","color":"white"}]
