execute as @s[team=Red] at @e[type=armor_stand,tag=map,tag=active,tag=t1] run tp @s ~ ~-20 ~
execute as @s[team=Blue] at @e[type=armor_stand,tag=map,tag=active,tag=t2] run tp @s ~ ~-20 ~
gamemode survival @s
function rauch:game/core/mechanics/stats
function rauch:game/core/ui/bossbar/respawn/invisible
tag @s remove dead
effect give @s instant_health 10 10 true
