scoreboard players set Global wok_time 0
scoreboard players set Global wok_kills 0
scoreboard players set Global gamestart 120

tag @a[team=Red] add wokkaman

# bossbar (displays collective health of all wokkamen)
scoreboard objectives add calc dummy
scoreboard objectives add t_health dummy
execute as @a[tag=game,tag=wokkaman] store result score @s t_health run attribute @s minecraft:generic.max_health get
execute as @a[tag=game,tag=wokkaman] run scoreboard players operation Global calc += @s t_health
execute as @a[tag=game,tag=wokkaman] run tellraw @s [{"score":{"name":"Global","objective":"calc"}}]
execute store result bossbar minecraft:wokkaman_health max run scoreboard players get Global calc
scoreboard objectives remove calc
scoreboard objectives remove t_health
function rauch:game/ui/bossbar/wokkaman_health/visible


tellraw @a[tag=game] [{"text":"[Wokkaman]: try kill me nubs","color":"yellow"}]
