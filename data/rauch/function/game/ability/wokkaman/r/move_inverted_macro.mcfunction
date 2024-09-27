#as vehicle, $pnum has pnum of vehicle
$ride @a[scores={zarzahn_hooking=$(pnum)},limit=1] mount @s
$execute at @s positioned ~ ~-0.4 ~ facing entity @a[scores={pnum=$(pnum)}] feet positioned ~ ~0.4 ~ run tp @s ^ ^ ^0.7
$execute at @s at @a[scores={pnum=$(pnum)},distance=..2.5] run function rauch:game/ability/wokkaman/r/unhook_inverted
