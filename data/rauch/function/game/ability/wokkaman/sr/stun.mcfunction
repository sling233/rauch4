#  $(pnum) has pnum of the player to be stunned

$execute as @a[scores={pnum=$(pnum)}] run scoreboard players set @s stun 30
$execute as @a[scores={pnum=$(pnum)}] run function rauch:game/mechanics/stuninit