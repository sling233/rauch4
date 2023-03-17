execute as @s[team=Red] at @e[type=marker,tag=map,tag=t1] run tp @s ~ ~-20 ~
execute as @s[team=Blue] at @e[type=marker,tag=map,tag=t2] run tp @s ~ ~-20 ~
gamemode adventure @s
function rauch:game/mechanics/stats
function rauch:game/ui/bossbar/respawn/invisible
tag @s remove dead
effect give @s instant_health 10 10 true
effect give @s minecraft:hunger 6 255 true
