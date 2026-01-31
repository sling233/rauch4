scoreboard players remove @s armor_target 10
function rauch:game/kits/set_armor_protection
execute at @s run playsound minecraft:block.vault.close_shutter master @s ~ ~ ~ 1 1
effect give @s minecraft:water_breathing 10 0 false
#effect give @s minecraft:hunger 2 255 true
tag @s add raucher_control
