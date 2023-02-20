# execute at player hit as the bolt
# save oriiginal hitpnum, fake it to the player hit, after the tag function revert it to what it was
scoreboard objectives add hitPnumBackUp dummy
scoreboard players operation @s hitPnumBackUp = @s hitPnum
scoreboard players operation @s hitPnum = @p pnum

function rauch:game/core/ability/bolt/q/tag

scoreboard players operation @s hitPnum = @s hitPnumBackUp

scoreboard objectives remove hitPnumBackUp