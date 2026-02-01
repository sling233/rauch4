# hooker has tag t_hooker, @s is hooked player

execute at @s run tp @s ~ ~0 ~
# if player's feet are in ground
execute at @s unless block ~ ~ ~ #minecraft:nonsolid if block ~ ~1 ~ #minecraft:nonsolid align y positioned ~ ~1 ~ run tp @s ~ ~ ~
# if player's feet and eyes are in ground
execute at @s unless block ~ ~1 ~ #minecraft:nonsolid facing entity @a[tag=t_hooker,limit=1] feet positioned ^ ^ ^1 run tp @s ~ ~ ~
# do both checks twice
execute at @s unless block ~ ~ ~ #minecraft:nonsolid if block ~ ~1 ~ #minecraft:nonsolid align y positioned ~ ~1 ~ run tp @s ~ ~ ~
execute at @s unless block ~ ~1 ~ #minecraft:nonsolid facing entity @a[tag=t_hooker,limit=1] feet positioned ^ ^ ^1 run tp @s ~ ~ ~


scoreboard players set @s stun 15
function rauch:game/mechanics/stuninit

execute as @a[tag=t_hooker] run scoreboard players reset @s zarzahn_hooking

tag @s remove zarzahn_hook
