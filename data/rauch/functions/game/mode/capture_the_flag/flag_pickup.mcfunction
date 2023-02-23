kill @e[type=armor_stand,tag=flag]
tag @s add flagPickedUp
effect give @s minecraft:glowing 1000000 0 true
#effect give @s minecraft:jump_boost 1000000 128 true

scoreboard players set @s hack 200
function rauch:game/mechanics/hackinit

function rauch:game/mechanics/armor
