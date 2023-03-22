function rauch:game/mode/capture_the_flag/spawn_flag

tag @s remove flagPickedUp

effect clear @s minecraft:glowing

title @a[tag=game] title ""
title @a[tag=game] subtitle "Flag Dropped"

scoreboard players set Global flagDistanceRed 1000000
scoreboard players set Global flagDistanceBlue 1000000

scoreboard players reset @s hack
function rauch:game/mechanics/hackend

function rauch:game/mechanics/armor
