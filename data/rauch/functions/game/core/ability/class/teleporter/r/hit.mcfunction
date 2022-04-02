tag @s add hit
tag @a[dx=0,limit=1] add hit
scoreboard players operation @a[tag=hit,limit=1] teleporter_id = @s pnum
execute as @a[tag=hit,limit=1] run function rauch:game/core/ability/class/teleporter/r/hitplayer
kill @s
