$ride @a[scores={pnum=$(pnum)},limit=1] mount @s
$execute at @s positioned ~ ~-0.4 ~ facing entity @a[scores={zarzahn_hooking=$(pnum)}] feet positioned ~ ~0.4 ~ run tp @s ^ ^ ^0.7
$execute at @s at @a[scores={zarzahn_hooking=$(pnum)},distance=..2.5] run function rauch:game/ability/wokkaman/r/unhook
