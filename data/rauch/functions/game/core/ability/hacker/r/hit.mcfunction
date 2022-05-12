say hit
scoreboard players set @s stun 50
function rauch:game/core/mechanics/stuninit
execute as @e[type=marker,tag=hacker,tag=temp] run function rauch:game/core/ability/hacker/r/kill
