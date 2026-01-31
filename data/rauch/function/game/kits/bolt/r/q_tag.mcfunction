# execute at player hit as the bolt
# fake a hit
tag @s add attacker
tag @p add victim
function rauch:game/kits/bolt/q/tag
tag @s remove attacker
tag @a remove victim
