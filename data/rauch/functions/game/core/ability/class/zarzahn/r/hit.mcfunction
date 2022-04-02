tag @s add hit
tag @a[dx=0,limit=1] add hit
scoreboard players operation @a[tag=hit,limit=1] zarzahn_id = @s pnum
tag @a[tag=hit,limit=1] add zarzahn_hook
tag @a[tag=hit,limit=1] remove hit
kill @s
