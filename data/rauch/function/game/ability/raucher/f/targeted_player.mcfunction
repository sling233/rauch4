# as player to be aggro'd
tag @s add temp
execute as @e[type=spider,tag=setup,tag=raucher_spider,limit=1] run function rauch:game/ability/raucher/f/set_target
tag @s remove temp
