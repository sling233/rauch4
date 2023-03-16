# t_hooker has pnum of hooking zarzahn, @s is hooked the player
execute as @a if score @s pnum = Global t_hooker run tag @s add t_hooker

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
execute if score Global t_hooker matches 1 run tag @s remove zarHook1
execute if score Global t_hooker matches 2 run tag @s remove zarHook2
execute if score Global t_hooker matches 3 run tag @s remove zarHook3
execute if score Global t_hooker matches 4 run tag @s remove zarHook4
execute if score Global t_hooker matches 5 run tag @s remove zarHook5
execute if score Global t_hooker matches 6 run tag @s remove zarHook6
execute if score Global t_hooker matches 7 run tag @s remove zarHook7
execute if score Global t_hooker matches 8 run tag @s remove zarHook8
execute if score Global t_hooker matches 9 run tag @s remove zarHook9
execute if score Global t_hooker matches 10 run tag @s remove zarHook10
execute if score Global t_hooker matches 11 run tag @s remove zarHook11
execute if score Global t_hooker matches 12 run tag @s remove zarHook12
tag @s[tag=!zarHook1,tag=!zarHook2,tag=!zarHook3,tag=!zarHook4,tag=!zarHook5,tag=!zarHook6,tag=!zarHook7,tag=!zarHook8,tag=!zarHook9,tag=!zarHook10,tag=!zarHook11,tag=!zarHook12] remove zarzahn_hook
tag @a remove t_hooker
