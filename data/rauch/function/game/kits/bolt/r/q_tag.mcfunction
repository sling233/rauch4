# execute at player hit as the bolt
# fake a hit
tag @p add victim
function rauch:game/kits/bolt/q/tag
tag @a remove victim
