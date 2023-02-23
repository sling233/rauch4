scoreboard players add @s stun 50
function rauch:game/mechanics/stuninit
execute as @e[type=marker,tag=hacker,tag=temp] run function rauch:game/ability/hacker/r/kill
