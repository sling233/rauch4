# executed by everyone with wark_startup 0..
scoreboard players add @s wark_startup 1
function rauch:game/ui/bossbar/wark/update_startup
execute at @s run particle minecraft:sculk_soul ~ ~1 ~ 0.2 0.4 0.2 0.1 4 force
execute if score @s wark_startup matches 20.. run function rauch:game/ability/wark/r/start_detect
