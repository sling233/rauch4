# summon snowball and remove setup tag from one spider
execute as @e[type=spider,tag=setup,tag=raucher_spider,limit=1] run function rauch:game/ability/raucher/r/summon_snowball
data modify entity @e[type=snowball,tag=setup,limit=1] Owner set from entity @s UUID

tag @e[type=snowball,tag=setup] remove setup

scoreboard players set Global t_success 1
