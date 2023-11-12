# player hit has tag t_hit
tp @s ~ ~ ~ facing entity @a[tag=t_hit,limit=1]

# feet it ground
execute at @s unless block ~ ~ ~ #nonsolid align y positioned ~ ~1 ~ run tp @s ~ ~ ~ facing entity @a[tag=t_hit,limit=1]
# feet still it ground
execute at @s unless block ~ ~ ~ #nonsolid facing entity @a[tag=t_hit,limit=1] feet positioned ^ ^ ^1 run tp @s ~ ~ ~
execute at @s unless block ~ ~ ~ #nonsolid run tp @s @a[tag=t_hit,limit=1]

execute at @s run particle minecraft:witch ~ ~1 ~ 0.2 0.4 0.2 1 120 force
execute at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.1 60 force
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~1 ~ 0.5
