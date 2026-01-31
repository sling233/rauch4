scoreboard players add @s armor_target 10
function rauch:game/mechanics/set_armor_protection
#effect clear @s minecraft:slowness
effect clear @s minecraft:water_breathing
execute at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 0.6 1.5
tag @s remove raucher_control
