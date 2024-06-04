# as the player that just died
# check all the hacker's arrays to see if the player was tagged
tag @s add temp
execute as @a[scores={kit=4}] run function rauch:macros/auto_foreach {storage:"hacker_r_tag",path:"list",for_function:"rauch:game/ability/hacker/r/tag/reward_check"}
tag @s remove temp
