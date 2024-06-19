# visual
execute at @s run particle minecraft:dust_color_transition{from_color:[1.0,0.5,1.0],scale:1,to_color:[0.1,0.0,0.0]} ~ ~1 ~ 0.2 0.3 0.2 1 10 force
execute at @s run particle minecraft:cherry_leaves ~ ~1 ~ 0.2 0.3 0.2 1 2 force

# search for target
execute as @s[team=Red] at @s as @a[tag=game,tag=!dead,team=Blue,distance=..4.5] run tag @s add t_found
execute as @s[team=Blue] at @s as @a[tag=game,tag=!dead,team=Red,distance=..4.5] run tag @s add t_found
#tag @s add t_found
execute unless entity @a[tag=t_found] run return 0

execute as @a[tag=t_found,sort=nearest,limit=1] run tag @s add wok_stepped_on

execute at @a[tag=wok_stepped_on] run summon boat ~ ~1 ~ {Invisible:1b,NoGravity:1b,Invulnerable:1b,Type:"oak",Tags:["wok_boat","setup"],Passengers:[{id:"minecraft:marker",Tags:["wok_boat_rider"]},{id:"minecraft:marker",Tags:["wok_boat_rider"]}]}
scoreboard players operation @e[type=boat,tag=wok_boat,tag=setup,limit=1] pnum = @a[tag=wok_stepped_on,limit=1] pnum
tag @e[type=boat,tag=wok_boat] remove setup
execute at @a[tag=wok_stepped_on] run tp @s ~ ~3.5 ~
execute as @a[tag=wok_stepped_on] run scoreboard players set @s stun 10
execute as @a[tag=wok_stepped_on] run function rauch:game/mechanics/stuninit
tag @a remove t_found

tag @s remove wok_stomp_search
