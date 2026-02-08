execute as @s[tag=t1] run data modify entity @s Pos set from storage map_data active.red
execute as @s[tag=t2] run data modify entity @s Pos set from storage map_data active.blue
execute as @s[tag=ce] run data modify entity @s Pos set from storage map_data active.center

execute at @s[tag=t1] run tp @a[team=Red,tag=game] ~ ~-20 ~
execute at @s[tag=t2] run tp @a[team=Blue,tag=game] ~ ~-20 ~

execute at @s[tag=t1] run spawnpoint @a[team=Red,tag=game] ~ ~-20 ~
execute at @s[tag=t2] run spawnpoint @a[team=Blue,tag=game] ~ ~-20 ~
