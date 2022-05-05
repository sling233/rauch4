scoreboard players set @s stun 50
function rauch:game/core/mechanics/stuninit
execute as @e[type=marker,tag=hacker,tag=temp] run tag @s add hit
execute as @e[type=marker,tag=hacker,tag=temp] run kill @s
